//
//  Movie.swift
//  diffable-search
//
//  Created by Kelvin Fok on 15/3/23.
//

import Foundation

struct Movie: Hashable {
  let title: String
}

extension Movie {
  static let all: [Self] = [
    "After Dark in Central Park",
    "Boarding School Girls' Pajama Parade",
    "Buffalo Bill's Wild West Parad",
    "Caught",
    "Clowns Spinning Hats",
    "Capture of Boer Battery by British",
    "The Enchanted Drawing",
    "Feeding Sea Lions",
    "How to Make a Fat Wife Out of Two Lean Ones",
    "New Life Rescue",
    "New Morning Bath",
    "Searching Ruins on Broadway, Galveston, for Dead Bodies",
    "The Tribulations of an Amateur Photographer",
    "Trouble in Hogan's Alley",
    "Two Old Sparks",
    "The Wonder, Ching Ling Foo",
    "Watermelon Contest",
    "Acrobats in Cairo",
    "An Affair of Honor",
    "Another Job for the Undertaker",
    "Arrival of Tongkin Train",
    "The Artist's Dilemma",
    "Band and Battalion of the U.S. Indian School",
    "Barnum and Bailey's Circus",
    "Beef Extract Room",
    "Boxing in Barrels",
    "Branding Hams",
    "Buffalo Street Parade",
    "A Busy Corner at Armour's",
    "The Bund, Shanghai",
    "Circular Panorama of the Base of the Electric Tower, Ending Looking Down the Mall",
    "Circular Panorama of the Electric Tower and Pond",
    "Circular Panorama of the Esplanade with the Electric Tower in the Background",
    "Coaling a Steamer, Nagasaki Bay, Japan",
    "Convention of Railroad Passengers",
    "Cornell-Columbia-University of Pennsylvania Boat Race at Ithaca, N.Y., Showing Lehigh Valley Observation Train",
    "Couchee Dance on the Midway",
    "The Donkey Party",
    "The Finish of Bridget McKeen",
    "Follow the Leader",
    "The Fraudulent Beggar",
    "Fun at a Children's Party",
    "A Good Joke",
    "The Gordon Sisters Boxing",
    "Grand Entry, Indian Congress",
    "Happy Hooligan April-Fooled",
    "Happy Hooligan Surprised",
    "Harbor of Shanghai",
    "A Hold-Up",
    "Ice-Boat Racing at Redbank, N.J.",
    "Indians No. 1",
    "Jeffries and Ruhlin Sparring Contest at San Francisco, Cal., November 15, 1901",
    "A Joke on Grandma",
    "Kansas Saloon Smashers",
    "Launching of the New Battleship 'Ohio' at San Francisco, Cal. When President McKinley Was There",
    "Laura Comstock's Bag-Punching Dog",
    "The Life of a Fireman",
    "Love by the Light of the Moon",
    "The Martyred Presidents",
    "Midway Dance",
    "Miles Canyon Tramway",
    "Montreal Fire Department on Runners",
    "Mounted Police Charge",
    "The Old Maid Having Her Picture Taken",
    "Opening of the Pan-American Exposition Showing Vice President Roosevelt Leading the Procession",
    "Pan-American Exposition by Night",
    "Panorama of the Exposition, No. 1",
    "Panorama of the Exposition, No. 2",
    "Panoramic View of the Fleet After Yacht Race",
    "Panoramic View of the Temple of Music and Esplanade",
    "Panoramic View, Asheville, N.C.",
    "Le Petit chaperon rouge",
    "Photographing the Audience",
    "Pie, Tramp and the Bulldog",
    "President McKinley and Escort Going to the Capitol",
    "President McKinley Taking the Oath",
    "President McKinley's Speech at the Pan-American Exposition",
    "The Queen's Funeral",
    "Le Rêve de Noël",
    "Rocking Gold in the Klondike",
    "Ruhlin in His Training Quarters",
    "Shad Fishing at Gloucester, N.J.",
    "Terrible Teddy, the Grizzly King",
    "The Tramp's Dream",
    "Tramp's Nap Interrupted",
    "Trapeze Disrobing Act",
    "A Trip Around the Pan-American Exposition",
    "Turkish Dance",
    "Twelve in a Barrel",
    "Two Rubes at the Theatre",
    "Upper Falls of the Yellowstone",
    "Washing Gold on 20 Above Hunker, Klondike",
    "Wedding Procession in Cairo",
    "Why Mr. Nation Wants a Divorce",
    "Wonderful Trick Donkey, The",
    "Yacht Race Fleet Following the Committee Boat 'Navigator' Oct. 4th, The",
    "You Can't Lose Your Mother-in-Law",
    "Arrival of Prince Henry (of Prussia) and President Roosevelt at Shooter's Island (1902)",
    "The Burlesque Suicide, No. 2",
    "Burning of Durland's Riding Academy",
    "The Interrupted Bathers",
    "Jack and the Beanstalk",
    "Who Said Watermelon?",
    "Snow White",
    "After Dark; or, the Policeman and His Lantern",
    "Alice in Wonderland",
    "An Up-to-Date Studio",
    "A Visit to the Zoo",
    "At Work in a Peat Bog",
    "Automobile Explosion",
    "The Ascent of Mont Blanc",
    "Bicycle Dive",
    "Bloodhounds Tracking a Convict",
    "Buying a Baby",
    "Cliff Scenery at the Fabbins",
    "Close Quarters, with a Notion of the Motion of the Ocean",
    "Cruelty on the High Seas",
    "A Coach Drive from Glengariffe to Kenmore",
    "Discovered Through an Opera Glass",
    "A Drove of Wild Welsh Mountain Ponies",
    "The Delhi Camp Railway",
    "DeVoy's Revolving Ladder Act",
    "The Deserter",
    "The Effects of a Trolley Car Collision",
    "Firemen to the Rescue",
    "The Goose Takes a Trolley Ride",
    "Egyptian Fakir with Dancing Monkey",
    "Electrocuting an Elephant",
    "English Barnyard Scene",
    "Every Day Is Sunshine When the Heart Beats True",
    "Fire!",
    "Fife Getting Instructions from Committee",
    "Fun on Board a Fishing Smack",
    "The Great Train Robbery",
    "Hop Picking",
    "How to Shut Up a Quarrelsome Wife",
    "Light Heavyweight Championship Contest Between Root and Gardner",
    "Little Tich and His Funny Feet",
    "Murder Scene from 'King of the Detectives'",
    "Moses in the Bullrushes",
    "Murphy's Wake",
    "New York Harbor Police Boat Patrol Capturing Pirates",
    "Nicholas Nickleby",
    "Old Irish Cabin",
    "On the Bow River Horse Ranch at Cochrane, North West Territory",
    "Only a Soldier Boy",
    "Our New Cook",
    "Over the Garden Wall",
    "Panorama of the Lakes of Killarney from Hotel",
    "Passengers Embarking from S.S. Augusta Victoria, at Beyrouth",
    "The Pigeons, Place St. Marc, Venice",
    "Pittsburgh Fire Department in Full Run",
    "Polo Match for the Championship at Hurlingham",
    "The Puzzled Bather and His Animated Clothes",
    "Quarrelsome Neighbours",
    "Railway Ride in the Alps",
    "Reproduction of the Corbett-McGovern Fight",
    "Rock of Ages",
    "The Runaway Match, or Marriage by Motor",
    "Saturday Shopping",
    "Scene in Canada -- Logging at Bear Creek",
    "Scene in Canada -- Spearing Salmon in a Mountain Stream",
    "A Search for Evidence",
    "Sensational Hurdle Race",
    "A Shocking Accident",
    "S.S. St. Louis",
    "Street Car Chivalry",
    "A Substantial Ghost",
    "The Tragical Tale of a Belated Letter",
    "The Tramp's First Bath",
    "A Trip Through the Gap of Dunloe",
    "A Trip to the Giant's Causeway",
    "Trouble in Hogan's Alley",
    "Trout Fishing, Landing Three Pounder",
    "True Love Never Runs Smooth",
    "Turning the Tables",
    "Two Little Vagabonds; or, The Pugilistic Parson",
    "The Unexpected Bath",
    "Wait Till Jack Comes Home",
    "What Happened in the Tunnel",
    "Wiring Pike in a Mill Stream",
    "The Workman's Paradise",
    "Alligator Farm",
    "The Automobile Race",
    "The Chicago Fire",
    "The Child Stealers",
    "Decoyed",
    "A Ferry in the Far East",
    "Fording a Stream",
    "The Great Baltimore Fire",
    "High Diving and Reverse",
    "Hurdle Jumping",
    "An Intelligent Elephant",
    "The Monkey Bicyclist",
    "Monkey, Dog and Pony Circus",
    "Nervy Nat Kisses the Bride",
    "A Nigger in the Woodpile",
    "Parsifal",
    "The Lover's Ruse",
    "A Race for a Kiss",
    "Raid on a Coiner's Den",
    "Revenge!",
    "A Railway Tragedy",
    "Scarecrow Pump",
    "The Strenuous Life; or, Anti-Race Suicide",
    "The Suburbanite",
    "Westinghouse Works, 1904",
    "Adventures of Sherlock Holmes; or, Held for Ransom",
    "Airy Fairy Lillian Tries on Her New Corsets",
    "A Ballroom Tragedy",
    "Burglar Bill",
    "Coney Island at Night",
    "A Dog Lost, Strayed or Stolen",
    "Hippodrome Races, Dreamland, Coney Island",
    "Escape from Sing Sing",
    "The Green Goods Man; or, Josiah and Samanthy's Experience with the Original 'American Confidence Game'",
    "The Great Jewel Mystery",
    "I.B. Dam and the Whole Dam Family",
    "The Kleptomaniac",
    "Impersonation of Britt-Nelson Fight",
    "New York Subway",
    "The Nihilists",
    "Moving Day; or, No Children Allowed",
    "License No. 13; or, The Hoodoo Automobile",
    "Life of an American Policeman",
    "The Little Train Robbery",
    "The Night Before Christmas",
    "A Kentucky Feud",
    "Peeping Tom in the Dressing Room",
    "The Newsboy",
    "A Policeman's Love Affair",
    "The Rat Trap Pickpocket Detector",
    "Reuben in the Opium Joint",
    "Raffles the Dog",
    "Raffles the Amateur Cracksman",
    "The Seven Ages",
    "The Servant Girl Problem",
    "The Train Wreckers",
    "Tom, Tom, the Piper's Son",
    "Watermelon Patch",
    "The Whole Dam Family and the Dam Dog",
    "The Vanderbilt Auto Race",
    "The Automobile Thieves",
    "Dream of a Rarebit Fiend",
    "From Leadville to Aspen: A Hold-Up in the Rockies",
    "Humorous Phases of Funny Faces",
    "Kathleen Mavourneen",
    "A Trip Down Market Street",
    "Waiting at the Church",
    "Amateur Night; or, Get the Hook",
    "Ben-Hur",
    "Daniel Boone",
    "How Brown Saw the Baseball Game",
    "Laughing Gas",
    "Terrible Ted",
    "The Tired Tailor's Dream",
    "The Adventures of Dollie",
    "Antony and Cleopatra",
    "Balked at the Altar",
    "The Bandit's Waterloo",
    "The Black Viper",
    "A Calamitous Elopement",
    "The Call of the Wild",
    "A Christmas Carol",
    "Deceived Slumming Party",
    "Dr. Jekyll and Mr. Hyde",
    "The Fairylogue and Radio-Plays",
    "The Fight for Freedom",
    "Macbeth",
    "Money Mad",
    "The Red Man and the Child",
    "Romeo and Juliet",
    "The Taming of the Shrew",
    "The Tavern Keeper's Daughter",
    "A B C's of the U.S.A.",
    "Adventures of a Drummer Boy",
    "And a Little Child Shall Lead Them",
    "At the Altar",
    "Boots and Saddles",
    "The Brahma Diamond",
    "A Brave Irish Lass"
  ].map { .init(title: $0) }
}