//
//  SportsViewController.swift
//  HeadsUp
//
//  Created by Bobby Solberg on 8/4/16.
//  Copyright © 2016 Bobby Solberg. All rights reserved.
//

import UIKit

class SportsViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    let sportsArray = ["baseball", "tennis", "hockey", "golf", "basketball", "chicago basketball mascot", "paintball", "Tour de France", "Britsh Grandslam"]
    
    

    @IBOutlet weak var timeLabel: UILabel!
    var counter = 30
    var timer = NSTimer()
    override func viewDidLoad() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(SportsViewController.update), userInfo: nil, repeats: true)
        let randomSports = Int(arc4random_uniform(UInt32(sportsArray.count)))
        print(sportsArray[randomSports])
        questionLabel.text = sportsArray[randomSports]
    }
    func update() {
        if counter > 0 {
            timeLabel.text = String(counter--)
        }
    }

    @IBAction func onTappedYesButton(sender: UIButton) {
        let randomSports = Int(arc4random_uniform(UInt32(sportsArray.count)))
        questionLabel.text = sportsArray[randomSports]
    }
    @IBAction func onTappedNoButton(sender: UIButton) {
        let randomSports = Int(arc4random_uniform(UInt32(sportsArray.count)))
        questionLabel.text = sportsArray[randomSports]
    }

}
