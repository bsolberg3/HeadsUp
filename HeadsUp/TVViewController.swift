//
//  TVViewController.swift
//  HeadsUp
//
//  Created by Bobby Solberg on 8/4/16.
//  Copyright © 2016 Bobby Solberg. All rights reserved.
//

import UIKit

class TVViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    let tvShowArray = ["Friends", "Breaking Bad", "Game of Thrones", "Seinfeld", "SNL", "Mad Men", "The Simpsons", "Family Guy", "South Park", "Modern Family", "Lost", "Arrested Development", "30 Rock", "House of Cards", "Billions", "Walking Dead", "Big Bang Theory", "The Office", "Parks and Recreation", "Curb Your Enthusiasm", "How I Met Your Mother"]

    @IBOutlet weak var timeLabel: UILabel!
    var counter = 30
    var timer = NSTimer()
    override func viewDidLoad() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(TVViewController.update), userInfo: nil, repeats: true)
        let randomTVShow = Int(arc4random_uniform(UInt32(tvShowArray.count)))
        print(tvShowArray[randomTVShow])
        questionLabel.text = tvShowArray[randomTVShow]

    }
    func update() {
        if counter > 0 {
            timeLabel.text = String(counter--)
        }
    }
    
    @IBAction func onTappedYesButton(sender: UIButton) {
        let randomTVShow = Int(arc4random_uniform(UInt32(tvShowArray.count)))
        questionLabel.text = tvShowArray[randomTVShow]
           }
    @IBAction func onTappedNoButton(sender: UIButton) {
        let randomTVShow = Int(arc4random_uniform(UInt32(tvShowArray.count)))
        questionLabel.text = tvShowArray[randomTVShow]
    }

}
