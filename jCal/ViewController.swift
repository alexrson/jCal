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
    @IBOutlet var gregDatePicker: UIDatePicker!
    @IBOutlet var arbitraryDateInJacobin: UILabel!
    
    
    
    @IBAction func changeArbitraryDate(sender: UIDatePicker) {
        updateArbitrary()
        //var greg_date = gregDatePicker.date
        //let arbitrary_french_date = get_republican_date(greg_date, Controller.selectedSegmentIndex)
        //arbitraryDateInJacobin.text = arbitrary_french_date.french_date
        
    }
    func updateArbitrary() {
        var greg_date = gregDatePicker.date
        let arbitrary_french_date = get_republican_date(greg_date, Controller.selectedSegmentIndex)
        arbitraryDateInJacobin.text = arbitrary_french_date.french_date
    }
    
    @IBAction func ChangeLeap(sender: AnyObject) {
        update()
        updateArbitrary()
    }
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let aSelector : Selector = "update"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: aSelector, userInfo: nil, repeats: true)
        updateArbitrary()
    }
    
    func update() {
        // Date
        let today = self.get_date_name(Controller.selectedSegmentIndex)
        self.DateLabel?.text = today.today_french_date
        // Day Name
        self.DayNameLabel?.text = today.today_name
        // Decimal Time
        var decimal_time = get_decimal_time()
        displayTimeLabel.text = decimal_time
        // Days elapsed
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        var formated_num_days = formatter.stringFromNumber(get_days_since_abolition())
        days_since_bourbon.text = "Il y a " + formated_num_days! + " jours depuis l'ancien régime."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func get_date_name(leap_add: Int) -> (today_french_date: NSString, today_name: NSString) {
        let total_days = get_days_since_abolition() - leap_add + 1
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


