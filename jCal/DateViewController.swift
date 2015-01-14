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
    @IBOutlet var DayNameLabel : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        // go right
        let cSelector : Selector = "go_right:"
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: cSelector)
        leftSwipe.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipe)
    }
    
    @IBAction func go_right(sender: AnyObject) {
        let timeViewController = self.storyboard!.instantiateViewControllerWithIdentifier("TimeViewController") as  TimeViewController
        timeViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(timeViewController, animated:true, completion:nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func update() {
        // Date
        let today = get_today_fdate(0)
        self.DateLabel?.text = today.french_date
        self.DayNameLabel?.text = today.french_name
    }
}
