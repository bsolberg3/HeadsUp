//
//  AccentsViewController.swift
//  HeadsUp
//
//  Created by Bobby Solberg on 8/4/16.
//  Copyright © 2016 Bobby Solberg. All rights reserved.
//

import UIKit

class AccentsViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    let accentArray = ["Scottish", "British", "French", "Australian", "Spanish", "German","Canadian", "Italian", "Brooklyn", "Russian", "Irish", "Chinese", "Indian", "Japanese"]
    
    @IBOutlet weak var timeLabel: UILabel!
    var counter = 30
    var timer = NSTimer()
    override func viewDidLoad() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(TVViewController.update), userInfo: nil, repeats: true)
        let randomAccent = Int(arc4random_uniform(UInt32(accentArray.count)))
        print(accentArray[randomAccent])
        questionLabel.text = accentArray[randomAccent]

    }
    func update() {
        if counter > 0 {
            timeLabel.text = String(counter--)
        }
    }
    @IBAction func onTappedYesButton(sender: UIButton) {
        let randomAccent = Int(arc4random_uniform(UInt32(accentArray.count)))
        questionLabel.text = accentArray[randomAccent]
    }
    @IBAction func onTappedNoButton(sender: UIButton) {
        let randomAccent = Int(arc4random_uniform(UInt32(accentArray.count)))
        questionLabel.text = accentArray[randomAccent]
    }

}
