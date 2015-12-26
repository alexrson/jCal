//
//  ViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 12/23/14.
//  Copyright (c) 2014 Alexander Robertson. All rights reserved.
//

import UIKit


class TimeViewController: UIViewController {
    @IBOutlet var displayTimeLabel: UILabel!

    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let aSelector : Selector = "update"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01,
            target: self, selector: aSelector, userInfo: nil, repeats: true)
    }
    
    func update() {
        // Decimal Time
        let decimal_time = get_decimal_time()
        displayTimeLabel.text = (decimal_time as String) + "\n"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}