//
//  ViewController.swift
//  diffable-search
//
//  Created by Kelvin Fok on 15/3/23.
//

import UIKit
import Combine

class TableViewController: UITableViewController {
    
  private lazy var dataSource: UITableViewDiffableDataSource<Section, Movie> = {
    return .init(tableView: tableView) { tableView, indexPath, item in
      let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! MovieTableViewCell
      cell.configure(item: item)
      return cell
    }
  }()
  
  private enum Section {
    case movie
  }
  
  private lazy var searchController: UISearchController = {
    let controller = UISearchController(searchResultsController: nil)
    controller.searchResultsUpdater = self
    controller.obscuresBackgroundDuringPresentation = false
    controller.searchBar.placeholder = "Type something here to search"
    controller.definesPresentationContext = true
    return controller
  }()
  
  // Publishers
  @Published private var movies: [Movie] = []
  @Published private var searchText: String?
  private var cancellables = Set<AnyCancellable>()
  
  override func loadView() {
    super.loadView()
    observe()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.searchController = searchController
    navigationItem.title = "Search Movies"
  }
  
  private func searchMovies(title: String) {
    var url: URL {
      var components = URLComponents()
      components.queryItems = [
          URLQueryItem(name:"s", value: title),
          URLQueryItem(name:"apikey", value: "9f43a994"),
      ]
      return URL(string: "https://www.omdbapi.com/" + components.string!)!
    }
    
    URLSession.shared.dataTaskPublisher(for: url)
      .map { $0.data }
      .decode(type: MoviesResponse.self, decoder: JSONDecoder())
      .receive(on: DispatchQueue.main)
      .sink { completion in
        // don't need to handle
      } receiveValue: { [weak self] response in
        self?.movies = response.result
        self?.applySnapshot()
      }.store(in: &cancellables)
  }
  
  private func observe() {
    $searchText
      .compactMap { $0 }
      .filter { !$0.isEmpty }
      .debounce(for: .seconds(0.3), scheduler: DispatchQueue.main)
      .sink { [weak self] query in
        self?.searchMovies(title: query)
      }.store(in: &cancellables)
  }
  
  private func applySnapshot() {
    var snapshot = NSDiffableDataSourceSnapshot<Section, Movie>()
    snapshot.appendSections([.movie])
    snapshot.appendItems(movies)
    dataSource.apply(snapshot, animatingDifferences: false)
  }
}

extension TableViewController {
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
}

extension TableViewController: UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
    searchText = searchController.searchBar.text
  }
}
