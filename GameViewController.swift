//
//  GameViewController.swift
//  HeadsUp
//
//  Created by Bobby Solberg on 8/3/16.
//  Copyright © 2016 Bobby Solberg. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    let sportsArray = ["baseball", "tennis", "hockey", "golf", "basketball", "chicago basketball mascot", "paintball", "Tour de France", "Britsh Grandslam"]
    let randomSport = Int(arc4random_uniform(UInt32(sportsArray.count)))
    print(sportsArray[randomSport])

    let accentArray = ["Scottish", "British", "French", "Australian", "Spanish", "German","Canadian", "Italian", "Brooklyn", "Russian", "Irish", "Chinese", "Indian", "Japanese"]
    let randomAccent = Int(arc4random_uniform(UInt32(accentArray.count)))
    print(accentArray[randomAccent])

    let foodArray = ["hot dog", "cupcake", "chicken", "salad", "tacos", "pizza", "pancakes", "soup", "grilled cheese", "peanut butter and jelly sandwich", "donut", "banana"]
    let randomFood = Int(arc4random_uniform(UInt32(foodArray.count)))
    print(foodArray[randomFood])

    let movieArray = ["Batman", "James Bond", "Jaws", "The Godfather", "Happy Gilmore", "Star Wars", "The Hunger Games", "Zombieland", "District 9", "The Matrix", "Rush Hour", "King Kong", "Planet of the Apes", "Jurassic Park", "Indiana Jones", "Pirates of the Caribbean", "The Hangover", "Fast and Furious", "SpirderMan", "Shrek"]
    let randomMovie = Int(arc4random_uniform(UInt32(movieArray.count)))
    print(movieArray[randomMovie])

    let tvShowArray = ["Friends", "Breaking Bad", "Game of Thrones", "Seinfeld", "SNL", "Mad Men", "The Simpsons", "Family Guy", "South Park", "Modern Family", "Lost", "Arrested Development", "30 Rock", "House of Cards", "Billions", "Walking Dead", "Big Bang Theory", "The Office", "Parks and Recreation", "Curb Your Enthusiasm", "How I Met Your Mother"]
    let randomTVShow = Int(arc4random_uniform(UInt32(tvShowArray.count)))
    print(tvShowArray[randomTVShow])

    let landmarksArray = ["Statue of Liberty", "Eiffel Tower", "The Great Sphinx", "The Pyramids of Giza", "Palace of Versailles", "Taj Mahal", "The Great Wall of China", "Machu Picchu", "Big Ben", "Leaning Tower of Pisa", "Niagra Falls", "Mount Everest", "Mount Rushmore", "Grand Canyon", "Golden Gate Bridge", "The Colosseum", "The Kremlin", "The Louvre"]
    let randomLandmark = Int(arc4random_uniform(UInt32(landmarksArray.count)))
    print(landmarksArray[randomLandmark])

    


}
}