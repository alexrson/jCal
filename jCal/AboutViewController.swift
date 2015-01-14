//
//  AboutViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 1/12/15.
//  Copyright (c) 2015 Alexander Robertson. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // go left
        let cSelectorL : Selector = "go_left:"
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: cSelectorL)
        rightSwipe.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(rightSwipe)
    }
    
    @IBAction func go_left(sender: AnyObject) {
        let leftwardVC = self.storyboard!.instantiateViewControllerWithIdentifier("LookupViewController") as LookupViewController
        leftwardVC.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(leftwardVC, animated:true, completion:nil)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
