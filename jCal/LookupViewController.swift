//
//  LookupViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 1/12/15.
//  Copyright (c) 2015 Alexander Robertson. All rights reserved.
//

import UIKit

class LookupViewController: UIViewController {
    @IBOutlet var arbitraryDateInJacobin: UILabel!
    @IBOutlet var gregDatePicker: UIDatePicker!
    
    
    @IBAction func changeArbitraryDate(sender: UIDatePicker) {
        updateArbitrary()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateArbitrary()
    }
    
    func updateArbitrary() {
        var greg_date = gregDatePicker.date
        let arbitrary_french_date = get_fdate(greg_date, leap_method: 0)
        arbitraryDateInJacobin.text = (arbitrary_french_date.french_date +
            ", " + arbitrary_french_date.french_name)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
