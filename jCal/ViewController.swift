//
//  ViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 12/23/14.
//  Copyright (c) 2014 Alexander Robertson. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var Controller: UISegmentedControl!
    @IBOutlet var DateLabel : UILabel?
    @IBOutlet var DayNameLabel : UILabel?
    @IBOutlet var days_since_bourbon : UILabel!
    @IBOutlet var displayTimeLabel: UILabel!
    @IBAction func ChangeLeap(sender: AnyObject) {
        
    }
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.update()
        let aSelector : Selector = "update"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: aSelector, userInfo: nil, repeats: true)
    }
    
    func update() {
        let today = self.get_date_name(Controller.selectedSegmentIndex)
        self.DateLabel?.text = today.today_french_date
        self.DayNameLabel?.text = today.today_name
        var decimal_time = get_decimal_time()
        displayTimeLabel.text = decimal_time
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        var formated_num_days = formatter.stringFromNumber(get_days_since_abolition())
        days_since_bourbon.text = "Il y a " + formated_num_days! + " jours depuis l'ancien régime."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func get_date_name(leap_add: Int) -> (today_french_date: NSString, today_name: NSString) {
        let total_days = get_days_since_abolition() + leap_add
        let today_french_date = computeFrenchDate(total_days)
        var today_name = "C'est un jour complémentaire!"
        for (french_date, day_name) in jacobin_day2name {
            if today_french_date.hasPrefix(french_date) {
                today_name = "Aujourd'hui est le jour de " + day_name + "."
            }
        }
        return (today_french_date, today_name)
    }
}


