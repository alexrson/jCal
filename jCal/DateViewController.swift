//
//  DateViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 1/12/15.
//  Copyright (c) 2015 Alexander Robertson. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    @IBOutlet var DateLabel : UILabel?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func update() {
        // Date
        let today = get_today_fdate(0)
        self.DateLabel?.text = "Date Jacobin: \n" + today.french_date + "\n" + today.french_name

    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
