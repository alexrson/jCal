//
//  DateViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 1/12/15.
//  Copyright (c) 2015 Alexander Robertson. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    var timer = NSTimer()
    @IBOutlet var DateLabel : UILabel?
    @IBOutlet var dateTabItem: UITabBarItem!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        let aSelector : Selector = "update"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01,
            target: self, selector: aSelector, userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func update() {
        // Date
        let today = get_today_fdate(0)
        self.DateLabel?.text = (today.french_date as String) + "\n" + (today.french_name as String)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
