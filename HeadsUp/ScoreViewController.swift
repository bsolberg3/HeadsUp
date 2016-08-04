//
//  ScoreViewController.swift
//  HeadsUp
//
//  Created by Bobby Solberg on 8/4/16.
//  Copyright © 2016 Bobby Solberg. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = 0
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        scoreLabel.text = String(score)
    }
}
