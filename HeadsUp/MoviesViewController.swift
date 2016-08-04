//
//  MoviesViewController.swift
//  HeadsUp
//
//  Created by Bobby Solberg on 8/4/16.
//  Copyright © 2016 Bobby Solberg. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    let movieArray = ["Batman", "James Bond", "Jaws", "The Godfather", "Happy Gilmore", "Star Wars", "The Hunger Games", "Zombieland", "District 9", "The Matrix", "Rush Hour", "King Kong", "Planet of the Apes", "Jurassic Park", "Indiana Jones", "Pirates of the Caribbean", "The Hangover", "Fast and Furious", "SpirderMan", "Shrek"]
    
    @IBOutlet weak var timeLabel: UILabel!
    var counter = 30
    var scoreCounter = 0
    var timer = NSTimer()
    override func viewDidLoad() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(TVViewController.update), userInfo: nil, repeats: true)
        let randomMovie = Int(arc4random_uniform(UInt32(movieArray.count)))
        print(movieArray[randomMovie])
        questionLabel.text = movieArray[randomMovie]

        
    }
    func update() {
        if counter > 0 {
            timeLabel.text = String(counter--)
        } else if counter == 0 {
            timer.invalidate()
            performSegueWithIdentifier("MovieSegue", sender: self)
        }
    }

    @IBAction func onTappedYesButton(sender: UIButton) {
        let randomMovie = Int(arc4random_uniform(UInt32(movieArray.count)))
        questionLabel.text = movieArray[randomMovie]
    }
    @IBAction func onTappedNoButton(sender: UIButton) {
        let randomMovie = Int(arc4random_uniform(UInt32(movieArray.count)))
        questionLabel.text = movieArray[randomMovie]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ScoreViewController
        dvc.score = scoreCounter
    }
}
