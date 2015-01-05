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

    override func viewDidLoad() {
        super.viewDidLoad()
        let today = self.get_date_name()
        self.DateLabel?.text = today.today_french_date
        self.DayNameLabel?.text = today.today_name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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


