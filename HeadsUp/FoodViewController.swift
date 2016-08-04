//
//  FoodViewController.swift
//  HeadsUp
//
//  Created by Bobby Solberg on 8/4/16.
//  Copyright © 2016 Bobby Solberg. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    let foodArray = ["hot dog", "cupcake", "chicken", "salad", "tacos", "pizza", "pancakes", "soup", "grilled cheese", "peanut butter and jelly sandwich", "donut", "banana"]

    @IBOutlet weak var timeLabel: UILabel!
    var counter = 30
    var timer = NSTimer()
    override func viewDidLoad() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(FoodViewController.update), userInfo: nil, repeats: true)
        let randomFood = Int(arc4random_uniform(UInt32(foodArray.count)))
        print(foodArray[randomFood])
        questionLabel.text = foodArray[randomFood]
    }
    func update() {
        if counter > 0 {
            timeLabel.text = String(counter--)
        }
    }

    @IBAction func onTappedYesButton(sender: UIButton) {
        let randomFood = Int(arc4random_uniform(UInt32(foodArray.count)))
        questionLabel.text = foodArray[randomFood]

    }
    
    @IBAction func onTappedNoButton(sender: UIButton) {
        let randomFood = Int(arc4random_uniform(UInt32(foodArray.count)))
         questionLabel.text = foodArray[randomFood]
    }
}
