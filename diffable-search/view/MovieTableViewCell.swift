//
//  MovieTableViewCell.swift
//  diffable-search
//
//  Created by Kelvin Fok on 19/3/23.
//

import UIKit
import SDWebImage

final class MovieTableViewCell: UITableViewCell {
  
  @IBOutlet weak var posterImageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var yearLabel: UILabel!
  
  func configure(item: Movie) {
    posterImageView.sd_setImage(with: .init(string: item.poster))
    titleLabel.text = item.title
    yearLabel.text = item.year
  }

}
