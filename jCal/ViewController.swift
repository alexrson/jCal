//
//  ViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 12/23/14.
//  Copyright (c) 2014 Alexander Robertson. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var DateLabel : UILabel?
    @IBOutlet var DayNameLabel : UILabel?
    @IBOutlet var TimeLabel : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TimeLabel?.text = "Set init"
        self.update()
    }
    
    func update() {
       
        let today = self.get_date_name()
        self.DateLabel?.text = today.today_french_date
        self.DayNameLabel?.text = today.today_name
        let decimal_time_string = self.get_decimal_time()
        self.TimeLabel?.text = decimal_time_string
        println(decimal_time_string)
        println(self.isViewLoaded())
        // TODO: create a xib file or something
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func get_decimal_time() -> NSString {
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond, fromDate: date)
        let hours = components.hour
        let minutes = components.minute
        let seconds = components.second
        var day_fraction = Float(hours) / 24.0
        day_fraction += (Float(minutes) / 60.0) / 24.0
        day_fraction += (Float(seconds) / 3600.0) / 24.0
        let decimal_hour = Int(day_fraction * 10.0)
        day_fraction -= Float(decimal_hour) / 10.0
        let decimal_minutes = Int(day_fraction * 1000.0)
        day_fraction -= Float(decimal_minutes) / 1000.0
        let decimal_seconds = Int(day_fraction * 100000.0)
        var minute_zero_pad = ""
        var second_zero_pad = ""
        // TODO: see if swift has string formatting tools
        if decimal_minutes < 10 {
            minute_zero_pad = "0"
        }
        if decimal_seconds < 10 {
            second_zero_pad = "0"
        }
        return (String(decimal_hour) + ":" +
                minute_zero_pad + String(decimal_minutes) + ":" +
                second_zero_pad + String(decimal_seconds))
    }

    func get_date_name() -> (today_french_date: NSString, today_name: NSString) {
        let total_days = get_days_since_abolition()
        let today_french_date = computeFrenchDate(total_days)
        var today_name = "C'est un jour complémentaire!"
        for (french_date, day_name) in jacobin_day2name {
            if today_french_date.hasPrefix(french_date) {
                today_name = "C'est " + day_name + " aujourd'hui."
            }
        }
        return (today_french_date, today_name)
    }
}


