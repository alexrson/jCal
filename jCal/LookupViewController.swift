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
        // go right
        let cSelectorR : Selector = "go_right:"
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: cSelectorR)
        leftSwipe.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(leftSwipe)
        
        // go left
        let cSelectorL : Selector = "go_left:"
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: cSelectorL)
        rightSwipe.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipe)
    }
    
    @IBAction func go_left(sender: AnyObject) {
        let leftwardVC = self.storyboard!.instantiateViewControllerWithIdentifier("TimeViewController") as TimeViewController
        leftwardVC.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(leftwardVC, animated:true, completion:nil)
    }
    
    @IBAction func go_right(sender: AnyObject) {
        let aboutViewController = self.storyboard!.instantiateViewControllerWithIdentifier("AboutViewController") as  AboutViewController
        aboutViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(aboutViewController, animated:true, completion:nil)
    }
    
    func updateArbitrary() {
        var greg_date = gregDatePicker.date
        let arbitrary_french_date = get_fdate(greg_date, 0)
        arbitraryDateInJacobin.text = (arbitrary_french_date.french_date +
            ", " + arbitrary_french_date.french_name)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
