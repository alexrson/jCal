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
    
    var timer = NSTimer()
    
    @IBAction func changeArbitraryDate(sender: UIDatePicker) {
        updateArbitrary()
    }
    func updateArbitrary() {
        var greg_date = gregDatePicker.date
        let arbitrary_french_date = get_fdate(greg_date, Controller.selectedSegmentIndex)
        arbitraryDateInJacobin.text = (arbitrary_french_date.french_date +
            ", " + arbitrary_french_date.french_name)
    }
    
    @IBAction func ChangeLeap(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let aSelector : Selector = "update"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01,
            target: self, selector: aSelector, userInfo: nil, repeats: true)
        arbitraryDateInJacobin.text = ""
    }
    
    func update() {
        // Date
        let today = get_today_fdate(Controller.selectedSegmentIndex)
        self.DateLabel?.text = today.french_date
        self.DayNameLabel?.text = "Aujourd'hui est le jour de " + today.french_name + "."
        
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
}