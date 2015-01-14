//
//  ViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 12/23/14.
//  Copyright (c) 2014 Alexander Robertson. All rights reserved.
//

import UIKit


class TimeViewController: UIViewController {
    @IBOutlet var displayTimeLabel: UILabel!

    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let aSelector : Selector = "update"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01,
            target: self, selector: aSelector, userInfo: nil, repeats: true)
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
        let leftwardVC = self.storyboard!.instantiateViewControllerWithIdentifier("DateViewController") as DateViewController
        leftwardVC.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(leftwardVC, animated:true, completion:nil)
    }
    
    @IBAction func go_right(sender: AnyObject) {
        let lookupViewController = self.storyboard!.instantiateViewControllerWithIdentifier("LookupViewController") as  LookupViewController
        lookupViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(lookupViewController, animated:true, completion:nil)
    }
    
    func update() {
        // Decimal Time
        var decimal_time = get_decimal_time()
        displayTimeLabel.text = decimal_time
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}