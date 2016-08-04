//
//  LandmarkViewController.swift
//  HeadsUp
//
//  Created by Bobby Solberg on 8/4/16.
//  Copyright © 2016 Bobby Solberg. All rights reserved.
//

import UIKit

class LandmarkViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    let landmarksArray = ["Statue of Liberty", "Eiffel Tower", "The Great Sphinx", "The Pyramids of Giza", "Palace of Versailles", "Taj Mahal", "The Great Wall of China", "Machu Picchu", "Big Ben", "Leaning Tower of Pisa", "Niagra Falls", "Mount Everest", "Mount Rushmore", "Grand Canyon", "Golden Gate Bridge", "The Colosseum", "The Kremlin", "The Louvre"]
        @IBOutlet weak var timeLabel: UILabel!
    var counter = 30
    var scoreCounter = 0
    var timer = NSTimer()
    override func viewDidLoad() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(TVViewController.update), userInfo: nil, repeats: true)
        let randomLandmark = Int(arc4random_uniform(UInt32(landmarksArray.count)))
        print(landmarksArray[randomLandmark])
        questionLabel.text = landmarksArray[randomLandmark]

    }
    func update() {
        if counter > 0 {
            timeLabel.text = String(counter--)
        } else if counter == 0 {
            timer.invalidate()
            performSegueWithIdentifier("LandmarksSegue", sender: self)
        }
    }

    @IBAction func onTappedYesButton(sender: UIButton) {
        let randomLandmark = Int(arc4random_uniform(UInt32(landmarksArray.count)))
        questionLabel.text = landmarksArray[randomLandmark]
    }
    @IBAction func onTappedNoButton(sender: UIButton) {
        let randomLandmark = Int(arc4random_uniform(UInt32(landmarksArray.count)))
        questionLabel.text = landmarksArray[randomLandmark]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ScoreViewController
        dvc.score = scoreCounter
    }
}
