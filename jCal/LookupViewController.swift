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
    
    func updateArbitrary() {
        var greg_date = gregDatePicker.date
        let arbitrary_french_date = get_fdate(greg_date, 0)
        arbitraryDateInJacobin.text = (arbitrary_french_date.french_date +
            ", " + arbitrary_french_date.french_name)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        updateArbitrary()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
