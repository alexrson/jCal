//
//  ViewController.swift
//  jCal
//
//  Created by Alexander Robertson on 12/23/14.
//  Copyright (c) 2014 Alexander Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func showMessage() {
        let date = NSDate()
        let flags: NSCalendarUnit = .DayCalendarUnit | .MonthCalendarUnit | .YearCalendarUnit
        let components = NSCalendar.currentCalendar().components(flags, fromDate: date)
        let year = components.year
        let month = components.month
        let day = components.day
        let date_string = String(month) + "-" + String(day) + "-" + String(year)
        var greg2jac = ["10-12-2014": "21 Vendémiaire CCXXIII", "10-13-2014": "22 Vendémiaire CCXXIII", "10-14-2014": "23 Vendémiaire CCXXIII", "10-15-2014": "24 Vendémiaire CCXXIII", "10-16-2014": "25 Vendémiaire CCXXIII", "10-17-2014": "26 Vendémiaire CCXXIII", "10-18-2014": "27 Vendémiaire CCXXIII", "10-19-2014": "28 Vendémiaire CCXXIII", "10-20-2014": "29 Vendémiaire CCXXIII", "10-21-2014": "30 Vendémiaire CCXXIII", "10-22-2014": "1 Brumaire CCXXIII", "10-23-2014": "2 Brumaire CCXXIII", "10-24-2014": "3 Brumaire CCXXIII", "10-25-2014": "4 Brumaire CCXXIII", "10-26-2014": "5 Brumaire CCXXIII", "10-27-2014": "6 Brumaire CCXXIII", "10-28-2014": "7 Brumaire CCXXIII", "10-29-2014": "8 Brumaire CCXXIII", "10-30-2014": "9 Brumaire CCXXIII", "10-31-2014": "10 Brumaire CCXXIII", "11-1-2014": "11 Brumaire CCXXIII", "11-2-2014": "12 Brumaire CCXXIII", "11-3-2014": "13 Brumaire CCXXIII", "11-4-2014": "14 Brumaire CCXXIII", "11-5-2014": "15 Brumaire CCXXIII", "11-6-2014": "16 Brumaire CCXXIII", "11-7-2014": "17 Brumaire CCXXIII", "11-8-2014": "18 Brumaire CCXXIII", "11-9-2014": "19 Brumaire CCXXIII", "11-10-2014": "20 Brumaire CCXXIII", "11-11-2014": "21 Brumaire CCXXIII", "11-12-2014": "22 Brumaire CCXXIII", "11-13-2014": "23 Brumaire CCXXIII", "11-14-2014": "24 Brumaire CCXXIII", "11-15-2014": "25 Brumaire CCXXIII", "11-16-2014": "26 Brumaire CCXXIII", "11-17-2014": "27 Brumaire CCXXIII", "11-18-2014": "28 Brumaire CCXXIII", "11-19-2014": "29 Brumaire CCXXIII", "11-20-2014": "30 Brumaire CCXXIII", "11-21-2014": "1 Frimaire CCXXIII", "11-22-2014": "2 Frimaire CCXXIII", "11-23-2014": "3 Frimaire CCXXIII", "11-24-2014": "4 Frimaire CCXXIII", "11-25-2014": "5 Frimaire CCXXIII", "11-26-2014": "6 Frimaire CCXXIII", "11-27-2014": "7 Frimaire CCXXIII", "11-28-2014": "8 Frimaire CCXXIII", "11-29-2014": "9 Frimaire CCXXIII", "11-30-2014": "10 Frimaire CCXXIII", "12-1-2014": "11 Frimaire CCXXIII", "12-2-2014": "12 Frimaire CCXXIII", "12-3-2014": "13 Frimaire CCXXIII", "12-4-2014": "14 Frimaire CCXXIII", "12-5-2014": "15 Frimaire CCXXIII", "12-6-2014": "16 Frimaire CCXXIII", "12-7-2014": "17 Frimaire CCXXIII", "12-8-2014": "18 Frimaire CCXXIII", "12-9-2014": "19 Frimaire CCXXIII", "12-10-2014": "20 Frimaire CCXXIII", "12-11-2014": "21 Frimaire CCXXIII", "12-12-2014": "22 Frimaire CCXXIII", "12-13-2014": "23 Frimaire CCXXIII", "12-14-2014": "24 Frimaire CCXXIII", "12-15-2014": "25 Frimaire CCXXIII", "12-16-2014": "26 Frimaire CCXXIII", "12-17-2014": "27 Frimaire CCXXIII", "12-18-2014": "28 Frimaire CCXXIII", "12-19-2014": "29 Frimaire CCXXIII", "12-20-2014": "30 Frimaire CCXXIII", "12-21-2014": "1 Nivôse CCXXIII", "12-22-2014": "2 Nivôse CCXXIII", "12-23-2014": "3 Nivôse CCXXIII", "12-24-2014": "4 Nivôse CCXXIII", "12-25-2014": "5 Nivôse CCXXIII", "12-26-2014": "6 Nivôse CCXXIII", "12-27-2014": "7 Nivôse CCXXIII", "12-28-2014": "8 Nivôse CCXXIII", "12-29-2014": "9 Nivôse CCXXIII", "12-30-2014": "10 Nivôse CCXXIII", "12-31-2014": "11 Nivôse CCXXIII", "1-1-2015": "12 Nivôse CCXXIII", "1-2-2015": "13 Nivôse CCXXIII", "1-3-2015": "14 Nivôse CCXXIII", "1-4-2015": "15 Nivôse CCXXIII", "1-5-2015": "16 Nivôse CCXXIII", "1-6-2015": "17 Nivôse CCXXIII", "1-7-2015": "18 Nivôse CCXXIII", "1-8-2015": "19 Nivôse CCXXIII", "1-9-2015": "20 Nivôse CCXXIII", "1-10-2015": "21 Nivôse CCXXIII", "1-11-2015": "22 Nivôse CCXXIII", "1-12-2015": "23 Nivôse CCXXIII", "1-13-2015": "24 Nivôse CCXXIII", "1-14-2015": "25 Nivôse CCXXIII", "1-15-2015": "26 Nivôse CCXXIII", "1-16-2015": "27 Nivôse CCXXIII", "1-17-2015": "28 Nivôse CCXXIII", "1-18-2015": "29 Nivôse CCXXIII", "1-19-2015": "30 Nivôse CCXXIII", "1-20-2015": "1 Pluviôse CCXXIII", "1-21-2015": "2 Pluviôse CCXXIII", "1-22-2015": "3 Pluviôse CCXXIII", "1-23-2015": "4 Pluviôse CCXXIII", "1-24-2015": "5 Pluviôse CCXXIII", "1-25-2015": "6 Pluviôse CCXXIII", "1-26-2015": "7 Pluviôse CCXXIII", "1-27-2015": "8 Pluviôse CCXXIII", "1-28-2015": "9 Pluviôse CCXXIII", "1-29-2015": "10 Pluviôse CCXXIII", "1-30-2015": "11 Pluviôse CCXXIII", "1-31-2015": "12 Pluviôse CCXXIII", "2-1-2015": "13 Pluviôse CCXXIII", "2-2-2015": "14 Pluviôse CCXXIII", "2-3-2015": "15 Pluviôse CCXXIII", "2-4-2015": "16 Pluviôse CCXXIII", "2-5-2015": "17 Pluviôse CCXXIII", "2-6-2015": "18 Pluviôse CCXXIII", "2-7-2015": "19 Pluviôse CCXXIII", "2-8-2015": "20 Pluviôse CCXXIII", "2-9-2015": "21 Pluviôse CCXXIII", "2-10-2015": "22 Pluviôse CCXXIII", "2-11-2015": "23 Pluviôse CCXXIII", "2-12-2015": "24 Pluviôse CCXXIII", "2-13-2015": "25 Pluviôse CCXXIII", "2-14-2015": "26 Pluviôse CCXXIII", "2-15-2015": "27 Pluviôse CCXXIII", "2-16-2015": "28 Pluviôse CCXXIII", "2-17-2015": "29 Pluviôse CCXXIII", "2-18-2015": "30 Pluviôse CCXXIII", "2-19-2015": "1 Ventôse CCXXIII", "2-20-2015": "2 Ventôse CCXXIII", "2-21-2015": "3 Ventôse CCXXIII", "2-22-2015": "4 Ventôse CCXXIII", "2-23-2015": "5 Ventôse CCXXIII", "2-24-2015": "6 Ventôse CCXXIII", "2-25-2015": "7 Ventôse CCXXIII", "2-26-2015": "8 Ventôse CCXXIII", "2-27-2015": "9 Ventôse CCXXIII", "2-28-2015": "10 Ventôse CCXXIII", "3-1-2015": "11 Ventôse CCXXIII", "3-2-2015": "12 Ventôse CCXXIII", "3-3-2015": "13 Ventôse CCXXIII", "3-4-2015": "14 Ventôse CCXXIII", "3-5-2015": "15 Ventôse CCXXIII", "3-6-2015": "16 Ventôse CCXXIII", "3-7-2015": "17 Ventôse CCXXIII", "3-8-2015": "18 Ventôse CCXXIII", "3-9-2015": "19 Ventôse CCXXIII", "3-10-2015": "20 Ventôse CCXXIII", "3-11-2015": "21 Ventôse CCXXIII", "3-12-2015": "22 Ventôse CCXXIII", "3-13-2015": "23 Ventôse CCXXIII", "3-14-2015": "24 Ventôse CCXXIII", "3-15-2015": "25 Ventôse CCXXIII", "3-16-2015": "26 Ventôse CCXXIII", "3-17-2015": "27 Ventôse CCXXIII", "3-18-2015": "28 Ventôse CCXXIII", "3-19-2015": "29 Ventôse CCXXIII", "3-20-2015": "30 Ventôse CCXXIII", "3-21-2015": "1 Germinal CCXXIII", "3-22-2015": "2 Germinal CCXXIII", "3-23-2015": "3 Germinal CCXXIII", "3-24-2015": "4 Germinal CCXXIII", "3-25-2015": "5 Germinal CCXXIII", "3-26-2015": "6 Germinal CCXXIII", "3-27-2015": "7 Germinal CCXXIII", "3-28-2015": "8 Germinal CCXXIII", "3-29-2015": "9 Germinal CCXXIII", "3-30-2015": "10 Germinal CCXXIII", "3-31-2015": "11 Germinal CCXXIII", "4-1-2015": "12 Germinal CCXXIII", "4-2-2015": "13 Germinal CCXXIII", "4-3-2015": "14 Germinal CCXXIII", "4-4-2015": "15 Germinal CCXXIII", "4-5-2015": "16 Germinal CCXXIII", "4-6-2015": "17 Germinal CCXXIII", "4-7-2015": "18 Germinal CCXXIII", "4-8-2015": "19 Germinal CCXXIII", "4-9-2015": "20 Germinal CCXXIII", "4-10-2015": "21 Germinal CCXXIII", "4-11-2015": "22 Germinal CCXXIII", "4-12-2015": "23 Germinal CCXXIII", "4-13-2015": "24 Germinal CCXXIII", "4-14-2015": "25 Germinal CCXXIII", "4-15-2015": "26 Germinal CCXXIII", "4-16-2015": "27 Germinal CCXXIII", "4-17-2015": "28 Germinal CCXXIII", "4-18-2015": "29 Germinal CCXXIII", "4-19-2015": "30 Germinal CCXXIII", "4-20-2015": "1 Floréal CCXXIII", "4-21-2015": "2 Floréal CCXXIII", "4-22-2015": "3 Floréal CCXXIII", "4-23-2015": "4 Floréal CCXXIII", "4-24-2015": "5 Floréal CCXXIII", "4-25-2015": "6 Floréal CCXXIII", "4-26-2015": "7 Floréal CCXXIII", "4-27-2015": "8 Floréal CCXXIII", "4-28-2015": "9 Floréal CCXXIII", "4-29-2015": "10 Floréal CCXXIII", "4-30-2015": "11 Floréal CCXXIII", "5-1-2015": "12 Floréal CCXXIII", "5-2-2015": "13 Floréal CCXXIII", "5-3-2015": "14 Floréal CCXXIII", "5-4-2015": "15 Floréal CCXXIII", "5-5-2015": "16 Floréal CCXXIII", "5-6-2015": "17 Floréal CCXXIII", "5-7-2015": "18 Floréal CCXXIII", "5-8-2015": "19 Floréal CCXXIII", "5-9-2015": "20 Floréal CCXXIII", "5-10-2015": "21 Floréal CCXXIII", "5-11-2015": "22 Floréal CCXXIII", "5-12-2015": "23 Floréal CCXXIII", "5-13-2015": "24 Floréal CCXXIII", "5-14-2015": "25 Floréal CCXXIII", "5-15-2015": "26 Floréal CCXXIII", "5-16-2015": "27 Floréal CCXXIII", "5-17-2015": "28 Floréal CCXXIII", "5-18-2015": "29 Floréal CCXXIII", "5-19-2015": "30 Floréal CCXXIII", "5-20-2015": "1 Prairial CCXXIII", "5-21-2015": "2 Prairial CCXXIII", "5-22-2015": "3 Prairial CCXXIII", "5-23-2015": "4 Prairial CCXXIII", "5-24-2015": "5 Prairial CCXXIII", "5-25-2015": "6 Prairial CCXXIII", "5-26-2015": "7 Prairial CCXXIII", "5-27-2015": "8 Prairial CCXXIII", "5-28-2015": "9 Prairial CCXXIII", "5-29-2015": "10 Prairial CCXXIII", "5-30-2015": "11 Prairial CCXXIII", "5-31-2015": "12 Prairial CCXXIII", "6-1-2015": "13 Prairial CCXXIII", "6-2-2015": "14 Prairial CCXXIII", "6-3-2015": "15 Prairial CCXXIII", "6-4-2015": "16 Prairial CCXXIII", "6-5-2015": "17 Prairial CCXXIII", "6-6-2015": "18 Prairial CCXXIII", "6-7-2015": "19 Prairial CCXXIII", "6-8-2015": "20 Prairial CCXXIII", "6-9-2015": "21 Prairial CCXXIII", "6-10-2015": "22 Prairial CCXXIII", "6-11-2015": "23 Prairial CCXXIII", "6-12-2015": "24 Prairial CCXXIII", "6-13-2015": "25 Prairial CCXXIII", "6-14-2015": "26 Prairial CCXXIII", "6-15-2015": "27 Prairial CCXXIII", "6-16-2015": "28 Prairial CCXXIII", "6-17-2015": "29 Prairial CCXXIII", "6-18-2015": "30 Prairial CCXXIII", "6-19-2015": "1 Messidor CCXXIII", "6-20-2015": "2 Messidor CCXXIII", "6-21-2015": "3 Messidor CCXXIII", "6-22-2015": "4 Messidor CCXXIII", "6-23-2015": "5 Messidor CCXXIII", "6-24-2015": "6 Messidor CCXXIII", "6-25-2015": "7 Messidor CCXXIII", "6-26-2015": "8 Messidor CCXXIII", "6-27-2015": "9 Messidor CCXXIII", "6-28-2015": "10 Messidor CCXXIII", "6-29-2015": "11 Messidor CCXXIII", "6-30-2015": "12 Messidor CCXXIII", "7-1-2015": "13 Messidor CCXXIII", "7-2-2015": "14 Messidor CCXXIII", "7-3-2015": "15 Messidor CCXXIII", "7-4-2015": "16 Messidor CCXXIII", "7-5-2015": "17 Messidor CCXXIII", "7-6-2015": "18 Messidor CCXXIII", "7-7-2015": "19 Messidor CCXXIII", "7-8-2015": "20 Messidor CCXXIII", "7-9-2015": "21 Messidor CCXXIII", "7-10-2015": "22 Messidor CCXXIII", "7-11-2015": "23 Messidor CCXXIII", "7-12-2015": "24 Messidor CCXXIII", "7-13-2015": "25 Messidor CCXXIII", "7-14-2015": "26 Messidor CCXXIII", "7-15-2015": "27 Messidor CCXXIII", "7-16-2015": "28 Messidor CCXXIII", "7-17-2015": "29 Messidor CCXXIII", "7-18-2015": "30 Messidor CCXXIII", "7-19-2015": "1 Thermidor CCXXIII", "7-20-2015": "2 Thermidor CCXXIII", "7-21-2015": "3 Thermidor CCXXIII", "7-22-2015": "4 Thermidor CCXXIII", "7-23-2015": "5 Thermidor CCXXIII", "7-24-2015": "6 Thermidor CCXXIII", "7-25-2015": "7 Thermidor CCXXIII", "7-26-2015": "8 Thermidor CCXXIII", "7-27-2015": "9 Thermidor CCXXIII", "7-28-2015": "10 Thermidor CCXXIII", "7-29-2015": "11 Thermidor CCXXIII", "7-30-2015": "12 Thermidor CCXXIII", "7-31-2015": "13 Thermidor CCXXIII", "8-1-2015": "14 Thermidor CCXXIII", "8-2-2015": "15 Thermidor CCXXIII", "8-3-2015": "16 Thermidor CCXXIII", "8-4-2015": "17 Thermidor CCXXIII", "8-5-2015": "18 Thermidor CCXXIII", "8-6-2015": "19 Thermidor CCXXIII", "8-7-2015": "20 Thermidor CCXXIII", "8-8-2015": "21 Thermidor CCXXIII", "8-9-2015": "22 Thermidor CCXXIII", "8-10-2015": "23 Thermidor CCXXIII", "8-11-2015": "24 Thermidor CCXXIII", "8-12-2015": "25 Thermidor CCXXIII", "8-13-2015": "26 Thermidor CCXXIII", "8-14-2015": "27 Thermidor CCXXIII", "8-15-2015": "28 Thermidor CCXXIII", "8-16-2015": "29 Thermidor CCXXIII", "8-17-2015": "30 Thermidor CCXXIII", "8-18-2015": "1 Fructidor CCXXIII", "8-19-2015": "2 Fructidor CCXXIII", "8-20-2015": "3 Fructidor CCXXIII", "8-21-2015": "4 Fructidor CCXXIII", "8-22-2015": "5 Fructidor CCXXIII", "8-23-2015": "6 Fructidor CCXXIII", "8-24-2015": "7 Fructidor CCXXIII", "8-25-2015": "8 Fructidor CCXXIII", "8-26-2015": "9 Fructidor CCXXIII", "8-27-2015": "10 Fructidor CCXXIII", "8-28-2015": "11 Fructidor CCXXIII", "8-29-2015": "12 Fructidor CCXXIII", "8-30-2015": "13 Fructidor CCXXIII", "8-31-2015": "14 Fructidor CCXXIII", "9-1-2015": "15 Fructidor CCXXIII", "9-2-2015": "16 Fructidor CCXXIII", "9-3-2015": "17 Fructidor CCXXIII", "9-4-2015": "18 Fructidor CCXXIII", "9-5-2015": "19 Fructidor CCXXIII", "9-6-2015": "20 Fructidor CCXXIII", "9-7-2015": "21 Fructidor CCXXIII", "9-8-2015": "22 Fructidor CCXXIII", "9-9-2015": "23 Fructidor CCXXIII", "9-10-2015": "24 Fructidor CCXXIII", "9-11-2015": "25 Fructidor CCXXIII", "9-12-2015": "26 Fructidor CCXXIII", "9-13-2015": "27 Fructidor CCXXIII", "9-14-2015": "28 Fructidor CCXXIII", "9-15-2015": "29 Fructidor CCXXIII", "9-16-2015": "30 Fructidor CCXXIII", "9-17-2015": "1 Sans-culottide CCXXIII", "9-18-2015": "2 Sans-culottide CCXXIII", "9-19-2015": "3 Sans-culottide CCXXIII", "9-20-2015": "4 Sans-culottide CCXXIII", "9-21-2015": "5 Sans-culottide CCXXIII", "9-22-2015": "1 Vendémiaire CCXXIV", "9-23-2015": "2 Vendémiaire CCXXIV", "9-24-2015": "3 Vendémiaire CCXXIV", "9-25-2015": "4 Vendémiaire CCXXIV", "9-26-2015": "5 Vendémiaire CCXXIV", "9-27-2015": "6 Vendémiaire CCXXIV", "9-28-2015": "7 Vendémiaire CCXXIV", "9-29-2015": "8 Vendémiaire CCXXIV", "9-30-2015": "9 Vendémiaire CCXXIV", "10-1-2015": "10 Vendémiaire CCXXIV", "10-2-2015": "11 Vendémiaire CCXXIV", "10-3-2015": "12 Vendémiaire CCXXIV", "10-4-2015": "13 Vendémiaire CCXXIV", "10-5-2015": "14 Vendémiaire CCXXIV", "10-6-2015": "15 Vendémiaire CCXXIV", "10-7-2015": "16 Vendémiaire CCXXIV", "10-8-2015": "17 Vendémiaire CCXXIV", "10-9-2015": "18 Vendémiaire CCXXIV", "10-10-2015": "19 Vendémiaire CCXXIV", "10-11-2015": "20 Vendémiaire CCXXIV", "10-12-2015": "21 Vendémiaire CCXXIV", "10-13-2015": "22 Vendémiaire CCXXIV", "10-14-2015": "23 Vendémiaire CCXXIV", "10-15-2015": "24 Vendémiaire CCXXIV", "10-16-2015": "25 Vendémiaire CCXXIV", "10-17-2015": "26 Vendémiaire CCXXIV", "10-18-2015": "27 Vendémiaire CCXXIV", "10-19-2015": "28 Vendémiaire CCXXIV", "10-20-2015": "29 Vendémiaire CCXXIV", "10-21-2015": "30 Vendémiaire CCXXIV", "10-22-2015": "1 Brumaire CCXXIV", "10-23-2015": "2 Brumaire CCXXIV", "10-24-2015": "3 Brumaire CCXXIV", "10-25-2015": "4 Brumaire CCXXIV", "10-26-2015": "5 Brumaire CCXXIV", "10-27-2015": "6 Brumaire CCXXIV", "10-28-2015": "7 Brumaire CCXXIV", "10-29-2015": "8 Brumaire CCXXIV", "10-30-2015": "9 Brumaire CCXXIV", "10-31-2015": "10 Brumaire CCXXIV", "11-1-2015": "11 Brumaire CCXXIV", "11-2-2015": "12 Brumaire CCXXIV", "11-3-2015": "13 Brumaire CCXXIV", "11-4-2015": "14 Brumaire CCXXIV", "11-5-2015": "15 Brumaire CCXXIV", "11-6-2015": "16 Brumaire CCXXIV", "11-7-2015": "17 Brumaire CCXXIV", "11-8-2015": "18 Brumaire CCXXIV", "11-9-2015": "19 Brumaire CCXXIV", "11-10-2015": "20 Brumaire CCXXIV", "11-11-2015": "21 Brumaire CCXXIV", "11-12-2015": "22 Brumaire CCXXIV", "11-13-2015": "23 Brumaire CCXXIV", "11-14-2015": "24 Brumaire CCXXIV", "11-15-2015": "25 Brumaire CCXXIV", "11-16-2015": "26 Brumaire CCXXIV", "11-17-2015": "27 Brumaire CCXXIV", "11-18-2015": "28 Brumaire CCXXIV", "11-19-2015": "29 Brumaire CCXXIV", "11-20-2015": "30 Brumaire CCXXIV", "11-21-2015": "1 Frimaire CCXXIV", "11-22-2015": "2 Frimaire CCXXIV", "11-23-2015": "3 Frimaire CCXXIV", "11-24-2015": "4 Frimaire CCXXIV", "11-25-2015": "5 Frimaire CCXXIV", "11-26-2015": "6 Frimaire CCXXIV", "11-27-2015": "7 Frimaire CCXXIV", "11-28-2015": "8 Frimaire CCXXIV", "11-29-2015": "9 Frimaire CCXXIV", "11-30-2015": "10 Frimaire CCXXIV", "12-1-2015": "11 Frimaire CCXXIV", "12-2-2015": "12 Frimaire CCXXIV", "12-3-2015": "13 Frimaire CCXXIV", "12-4-2015": "14 Frimaire CCXXIV", "12-5-2015": "15 Frimaire CCXXIV", "12-6-2015": "16 Frimaire CCXXIV", "12-7-2015": "17 Frimaire CCXXIV", "12-8-2015": "18 Frimaire CCXXIV", "12-9-2015": "19 Frimaire CCXXIV", "12-10-2015": "20 Frimaire CCXXIV", "12-11-2015": "21 Frimaire CCXXIV", "12-12-2015": "22 Frimaire CCXXIV", "12-13-2015": "23 Frimaire CCXXIV", "12-14-2015": "24 Frimaire CCXXIV", "12-15-2015": "25 Frimaire CCXXIV", "12-16-2015": "26 Frimaire CCXXIV", "12-17-2015": "27 Frimaire CCXXIV", "12-18-2015": "28 Frimaire CCXXIV", "12-19-2015": "29 Frimaire CCXXIV", "12-20-2015": "30 Frimaire CCXXIV", "12-21-2015": "1 Nivôse CCXXIV", "12-22-2015": "2 Nivôse CCXXIV", "12-23-2015": "3 Nivôse CCXXIV", "12-24-2015": "4 Nivôse CCXXIV", "12-25-2015": "5 Nivôse CCXXIV", "12-26-2015": "6 Nivôse CCXXIV", "12-27-2015": "7 Nivôse CCXXIV", "12-28-2015": "8 Nivôse CCXXIV", "12-29-2015": "9 Nivôse CCXXIV", "12-30-2015": "10 Nivôse CCXXIV", "12-31-2015": "11 Nivôse CCXXIV"]
        let jacobin_day2name = ["1 Vendémiaire": "Raisin (Grape)", "2 Vendémiaire": "Safran (Saffron)", "3 Vendémiaire": "Châtaigne (Chestnut)", "4 Vendémiaire": "Colchique (Crocus)", "5 Vendémiaire": "Cheval (Horse)", "6 Vendémiaire": "Balsamine (Impatiens)", "7 Vendémiaire": "Carotte (Carrot)", "8 Vendémiaire": "Amaranthe (Amaranth)", "9 Vendémiaire": "Panais (Parsnip)", "10 Vendémiaire": "Cuve (Vat)", "11 Vendémiaire": "Pomme de terre (Potato)", "12 Vendémiaire": "Immortelle (Strawflower)", "13 Vendémiaire": "Potiron (Winter Squash)", "14 Vendémiaire": "Réséda (Mignonette)", "15 Vendémiaire": "Âne (Donkey)", "16 Vendémiaire": "Belle de nuit (The four o'clock flower)", "17 Vendémiaire": "Citrouille (Pumpkin)", "18 Vendémiaire": "Sarrasin (Buckwheat)", "19 Vendémiaire": "Tournesol (Sunflower)", "20 Vendémiaire": "Pressoir (Wine-Press)", "21 Vendémiaire": "Chanvre (Hemp)", "22 Vendémiaire": "Pêche (Peach)", "23 Vendémiaire": "Navet (Turnip)", "24 Vendémiaire": "Amaryllis (Amaryllis)", "25 Vendémiaire": "Bœuf (Ox)", "26 Vendémiaire": "Aubergine (Eggplant)", "27 Vendémiaire": "Piment (Chili Pepper)", "28 Vendémiaire": "Tomate (Tomato)", "29 Vendémiaire": "Orge (Barley)", "30 Vendémiaire": "Tonneau (Barrel)", "1 Brumaire": "Pomme (Apple)", "2 Brumaire": "Céleri (Celery)", "3 Brumaire": "Poire (Pear)", "4 Brumaire": "Betterave (Beet root)", "5 Brumaire": "Oie (Goose)", "6 Brumaire": "Héliotrope (Heliotrope)", "7 Brumaire": "Figue (Common Fig)", "8 Brumaire": "Scorsonère (Black Salsify)", "9 Brumaire": "Alisier (Chequer Tree)", "10 Brumaire": "Charrue (Plough)", "11 Brumaire": "Salsifis (Salsify)", "12 Brumaire": "Mâcre (Water chestnut)", "13 Brumaire": "Topinambour (Jerusalem Artichoke)", "14 Brumaire": "Endive (Endive)", "15 Brumaire": "Dindon (Turkey)", "16 Brumaire": "Chervis (Skirret)", "17 Brumaire": "Cresson (Watercress)", "18 Brumaire": "Dentelaire (Leadworts)", "19 Brumaire": "Grenade (Pomegranate)", "20 Brumaire": "Herse (Harrow)", "21 Brumaire": "Bacchante (Asarum baccharis)", "22 Brumaire": "Azerole (Azarole)", "23 Brumaire": "Garance (Madder)", "24 Brumaire": "Orange (Orange)", "25 Brumaire": "Faisan (Pheasant)", "26 Brumaire": "Pistache (Pistachio)", "27 Brumaire": "Macjonc (Tuberous pea)", "28 Brumaire": "Coing (Quince)", "29 Brumaire": "Cormier (Service tree)", "30 Brumaire": "Rouleau (Roller)", "1 Frimaire": "Raiponce (Rampion)", "2 Frimaire": "Turneps (Turnip)", "3 Frimaire": "Chicorée (Chicory)", "4 Frimaire": "Nèfle (Medlar)", "5 Frimaire": "Cochon (Pig)", "6 Frimaire": "Mâche (Corn Salad)", "7 Frimaire": "Chou-fleur (Cauliflower)", "8 Frimaire": "Miel (Honey)", "9 Frimaire": "Genièvre (Juniper)", "10 Frimaire": "Pioche (Pickaxe)", "11 Frimaire": "Cire (Wax)", "12 Frimaire": "Raifort (Horseradish)", "13 Frimaire": "Cèdre (Cedar tree)", "14 Frimaire": "Sapin (Fir tree)", "15 Frimaire": "Chevreuil (Roe Deer)", "16 Frimaire": "Ajonc (Gorse)", "17 Frimaire": "Cyprès (Cypress Tree)", "18 Frimaire": "Lierre (Ivy)", "19 Frimaire": "Sabine (Savin Juniper)", "20 Frimaire": "Hoyau (Grub-hoe", "21 Frimaire": "Érable à sucre (Sugar Maple)", "22 Frimaire": "Bruyère (Heather)", "23 Frimaire": "Roseau (Reed plant)", "24 Frimaire": "Oseille (Sorrel)", "25 Frimaire": "Grillon (Cricket)", "26 Frimaire": "Pignon (Pinenut)", "27 Frimaire": "Liège (Cork)", "28 Frimaire": "Truffe (Truffle)", "29 Frimaire": "Olive (Olive)", "30 Frimaire": "Pelle (Shovel)", "1 Nivôse": "Tourbe (Peat)", "2 Nivôse": "Houille (Coal)", "3 Nivôse": "Bitume (Bitumen)", "4 Nivôse": "Soufre (Sulphur)", "5 Nivôse": "Chien (Dog)", "6 Nivôse": "Lave (Lava)", "7 Nivôse": "Terre végétale (Topsoil)", "8 Nivôse": "Fumier (Manure)", "9 Nivôse": "Salpêtre (Saltpeter)", "10 Nivôse": "Fléau (Flail)", "11 Nivôse": "Granit (Granite stone)", "12 Nivôse": "Argile (Clay)", "13 Nivôse": "Ardoise (Slate)", "14 Nivôse": "Grès (Sandstone)", "15 Nivôse": "Lapin (Rabbit)", "16 Nivôse": "Silex (Flint)", "17 Nivôse": "Marne (Marl)", "18 Nivôse": "Pierre à chaux (Limestone)", "19 Nivôse": "Marbre (Marble)", "20 Nivôse": "Van (Winnowing basket)", "21 Nivôse": "Pierre à plâtre (Gypsum)", "22 Nivôse": "Sel (Salt)", "23 Nivôse": "Fer (Iron)", "24 Nivôse": "Cuivre (Copper)", "25 Nivôse": "Chat (Cat)", "26 Nivôse": "Étain (Tin)", "27 Nivôse": "Plomb (Lead)", "28 Nivôse": "Zinc (Zinc)", "29 Nivôse": "Mercure (Mercury (metal))", "30 Nivôse": "Crible (Sieve)", "1 Pluviôse": "Lauréole (Spurge-laurel)", "2 Pluviôse": "Mousse (Moss)", "3 Pluviôse": "Fragon (Butcher's Broom)", "4 Pluviôse": "Perce-neige (Snowdrop)", "5 Pluviôse": "Taureau (Bull)", "6 Pluviôse": "Laurier-thym (Laurustinus)", "7 Pluviôse": "Amadouvier (Tinder polypore)", "8 Pluviôse": "Mézéréon (Daphne mezereum)", "9 Pluviôse": "Peuplier (Poplar Tree)", "10 Pluviôse": "Coignée (Axe)", "11 Pluviôse": "Ellébore (Hellebore)", "12 Pluviôse": "Brocoli (Broccoli)", "13 Pluviôse": "Laurier (Laurel)", "14 Pluviôse": "Avelinier (Filbert)", "15 Pluviôse": "Vache (Cow)", "16 Pluviôse": "Buis (Box Tree)", "17 Pluviôse": "Lichen (Lichen)", "18 Pluviôse": "If (Yew tree)", "19 Pluviôse": "Pulmonaire (Lungwort)", "20 Pluviôse": "Serpette (Billhook)", "21 Pluviôse": "Thlaspi (Pennycress)", "22 Pluviôse": "Thimelé (Rose Daphne)", "23 Pluviôse": "Chiendent (Couch Grass)", "24 Pluviôse": "Trainasse (Common Knotgrass)", "25 Pluviôse": "Lièvre (Hare)", "26 Pluviôse": "Guède (Woad)", "27 Pluviôse": "Noisetier (Hazel)", "28 Pluviôse": "Cyclamen (Cyclamen)", "29 Pluviôse": "Chélidoine (Celandine)", "30 Pluviôse": "Traîneau (Sleigh)", "1 Ventôse": "Tussilage (Coltsfoot)", "2 Ventôse": "Cornouiller (Dogwood)", "3 Ventôse": "Violier (Matthiola)", "4 Ventôse": "Troène (Privet)", "5 Ventôse": "Bouc (Billygoat)", "6 Ventôse": "Asaret (Wild Ginger)", "7 Ventôse": "Alaterne (Italian Buckthorn)", "8 Ventôse": "Violette (Violet)", "9 Ventôse": "Marceau (Goat Willow)", "10 Ventôse": "Bêche (Spade)", "11 Ventôse": "Narcisse (Narcissus)", "12 Ventôse": "Orme (Elm Tree)", "13 Ventôse": "Fumeterre (Common fumitory)", "14 Ventôse": "Vélar (Hedge Mustard)", "15 Ventôse": "Chèvre (Goat)", "16 Ventôse": "Épinard (Spinach)", "17 Ventôse": "Doronic (Large-flowered Leopard's Bane)", "18 Ventôse": "Mouron (Pimpernel)", "19 Ventôse": "Cerfeuil (Chervil)", "20 Ventôse": "Cordeau (Twine)", "21 Ventôse": "Mandragore (Mandrake)", "22 Ventôse": "Persil (Parsley)", "23 Ventôse": "Cochléaria (Scurvy-grass)", "24 Ventôse": "Pâquerette (Daisy)", "25 Ventôse": "Thon (Tuna)", "26 Ventôse": "Pissenlit (Dandelion)", "27 Ventôse": "Sylvie (Wood Anemone)", "28 Ventôse": "Capillaire (Maidenhair fern)", "29 Ventôse": "Frêne (Ash Tree)", "30 Ventôse": "Plantoir (Dibber)", "1 Germinal": "Primevère (Primrose)", "2 Germinal": "Platane (Plane Tree)", "3 Germinal": "Asperge (Asparagus)", "4 Germinal": "Tulipe (Tulip)", "5 Germinal": "Poule (Hen)", "6 Germinal": "Bette (Chard Plant)", "7 Germinal": "Bouleau (Birch Tree)", "8 Germinal": "Jonquille (Daffodil)", "9 Germinal": "Aulne (Alder)", "10 Germinal": "Couvoir (Hatchery)", "11 Germinal": "Pervenche (Periwinkle)", "12 Germinal": "Charme (Hornbeam)", "13 Germinal": "Morille (Morel)", "14 Germinal": "Hêtre (European Beech Tree)", "15 Germinal": "Abeille (Bee)", "16 Germinal": "Laitue (Lettuce)", "17 Germinal": "Mélèze (Larch)", "18 Germinal": "Ciguë (Hemlock)", "19 Germinal": "Radis (Radish)", "20 Germinal": "Ruche (Hive)", "21 Germinal": "Gainier (Judas tree)", "22 Germinal": "Romaine (Lettuce)", "23 Germinal": "Marronnier (Horse chestnut)", "24 Germinal": "Roquette (Arugula or Rocket)", "25 Germinal": "Pigeon (Pigeon)", "26 Germinal": "Lilas (Lilac)", "27 Germinal": "Anémone (Anemone)", "28 Germinal": "Pensée (Pansy)", "29 Germinal": "Myrtille (Blueberry)", "30 Germinal": "Greffoir (Knife)", "1 Floréal": "Rose (Rose)", "2 Floréal": "Chêne (Oak Tree)", "3 Floréal": "Fougère (Fern)", "4 Floréal": "Aubépine (Hawthorn)", "5 Floréal": "Rossignol (Nightingale)", "6 Floréal": "Ancolie (Common Columbine)", "7 Floréal": "Muguet (Lily of the Valley)", "8 Floréal": "Champignon (Button mushroom)", "9 Floréal": "Hyacinthe (Hyacinth)", "10 Floréal": "Râteau (Rake)", "11 Floréal": "Rhubarbe (Rhubarb)", "12 Floréal": "Sainfoin (Sainfoin)", "13 Floréal": "Bâton d'or (Wallflower)", "14 Floréal": "Chamerisier (Fan Palm tree)", "15 Floréal": "Ver à soie (Silkworm)", "16 Floréal": "Consoude (Comfrey)", "17 Floréal": "Pimprenelle (Salad Burnet)", "18 Floréal": "Corbeille d'or (Basket of Gold)", "19 Floréal": "Arroche (Orache)", "20 Floréal": "Sarcloir (Garden hoe)", "21 Floréal": "Statice (Thrift)", "22 Floréal": "Fritillaire (Fritillary)", "23 Floréal": "Bourrache (Borage)", "24 Floréal": "Valériane (Valerian)", "25 Floréal": "Carpe (Carp)", "26 Floréal": "Fusain (Spindle (shrub))", "27 Floréal": "Civette (Chive)", "28 Floréal": "Buglosse (Bugloss)", "29 Floréal": "Sénevé (Wild mustard)", "30 Floréal": "Houlette (Shepherd's crook)", "1 Prairial": "Luzerne (Alfalfa)", "2 Prairial": "Hémérocalle (Daylily)", "3 Prairial": "Trèfle (Clover)", "4 Prairial": "Angélique (Angelica)", "5 Prairial": "Canard (Duck)", "6 Prairial": "Mélisse (Lemon Balm)", "7 Prairial": "Fromental (Oat grass)", "8 Prairial": "Martagon (Martagon lily)", "9 Prairial": "Serpolet (Wild Thyme )", "10 Prairial": "Faux (Scythe)", "11 Prairial": "Fraise (Strawberry)", "12 Prairial": "Bétoine (Woundwort)", "13 Prairial": "Pois (Pea)", "14 Prairial": "Acacia (Acacia)", "15 Prairial": "Caille (Quail)", "16 Prairial": "Œillet (Carnation)", "17 Prairial": "Sureau (Elderberry)", "18 Prairial": "Pavot (Poppy plant)", "19 Prairial": "Tilleul (Linden or Lime tree)", "20 Prairial": "Fourche (Pitchfork)", "21 Prairial": "Barbeau (Cornflower)", "22 Prairial": "Camomille (Camomile)", "23 Prairial": "Chèvrefeuille (Honeysuckle)", "24 Prairial": "Caille-lait (Bedstraw)", "25 Prairial": "Tanche (Tench)", "26 Prairial": "Jasmin (Jasmine Plant)", "27 Prairial": "Verveine (Verbena)", "28 Prairial": "Thym (Thyme Plant)", "29 Prairial": "Pivoine (Peony Plant)", "30 Prairial": "Chariot (Hand Cart)", "1 Messidor": "Seigle (Rye)", "2 Messidor": "Avoine (Oats)", "3 Messidor": "Oignon (Onion)", "4 Messidor": "Véronique (Speedwell)", "5 Messidor": "Mulet (Mule)", "6 Messidor": "Romarin (Rosemary)", "7 Messidor": "Concombre (Cucumber)", "8 Messidor": "Échalote (Shallot)", "9 Messidor": "Absinthe (Wormwood)", "10 Messidor": "Faucille (Sickle)", "11 Messidor": "Coriandre (Coriander)", "12 Messidor": "Artichaut (Artichoke)", "13 Messidor": "Girofle (Clove)", "14 Messidor": "Lavande (Lavender)", "15 Messidor": "Chamois (Chamois)", "16 Messidor": "Tabac (Tobacco)", "17 Messidor": "Groseille (Currant)", "18 Messidor": "Gesse (Hairy Vetchling)", "19 Messidor": "Cerise (Cherry)", "20 Messidor": "Parc (Park)", "21 Messidor": "Menthe (Mint)", "22 Messidor": "Cumin (Cumin)", "23 Messidor": "Haricot (Bean)", "24 Messidor": "Orcanète (Alkanet)", "25 Messidor": "Pintade (Guinea fowl)", "26 Messidor": "Sauge (Sage Plant)", "27 Messidor": "Ail (Garlic)", "28 Messidor": "Vesce (Tare)", "29 Messidor": "Blé (Wheat)", "30 Messidor": "Chalémie (Shawm)", "1 Thermidor": "Épeautre (Spelt)", "2 Thermidor": "Bouillon blanc (Common Mullein)", "3 Thermidor": "Melon (Melon)", "4 Thermidor": "Ivraie (Ryegrass)", "5 Thermidor": "Bélier (Ram)", "6 Thermidor": "Prêle (Horsetail)", "7 Thermidor": "Armoise (Mugwort)", "8 Thermidor": "Carthame (Safflower)", "9 Thermidor": "Mûre (Blackberry)", "10 Thermidor": "Arrosoir (Watering Can)", "11 Thermidor": "Panic (Switchgrass)", "12 Thermidor": "Salicorne (Common Glasswort)", "13 Thermidor": "Abricot (Apricot)", "14 Thermidor": "Basilic (Basil)", "15 Thermidor": "Brebis (Ewe)", "16 Thermidor": "Guimauve (Marshmallow)", "17 Thermidor": "Lin (Flax)", "18 Thermidor": "Amande (Almond)", "19 Thermidor": "Gentiane (Gentian)", "20 Thermidor": "Écluse (Lock)", "21 Thermidor": "Carline (Carline thistle)", "22 Thermidor": "Câprier (Caper)", "23 Thermidor": "Lentille (Lentil)", "24 Thermidor": "Aunée (Inula)", "25 Thermidor": "Loutre (Otter)", "26 Thermidor": "Myrte (Myrtle)", "27 Thermidor": "Colza (Rapeseed)", "28 Thermidor": "Lupin (Lupin)", "29 Thermidor": "Coton (Cotton)", "30 Thermidor": "Moulin (Mill)", "1 Fructidor": "Prune (Plum)", "2 Fructidor": "Millet (Millet)", "3 Fructidor": "Lycoperdon (Puffball)", "4 Fructidor": "Escourgeon (Six-row Barley)", "5 Fructidor": "Saumon (Salmon)", "6 Fructidor": "Tubéreuse (Tuberose)", "7 Fructidor": "Sucrion (Winter Barley)", "8 Fructidor": "Apocyn (Apocynum)", "9 Fructidor": "Réglisse (Liquorice)", "10 Fructidor": "Échelle (Ladder)", "11 Fructidor": "Pastèque (Watermelon)", "12 Fructidor": "Fenouil (Fennel)", "13 Fructidor": "Épine vinette (Barberry)", "14 Fructidor": "Noix (Walnut)", "15 Fructidor": "Truite (Trout)", "16 Fructidor": "Citron (Lemon)", "17 Fructidor": "Cardère (Teasel)", "18 Fructidor": "Nerprun (Buckthorn)", "19 Fructidor": "Tagette (Mexican Marigold)", "20 Fructidor": "Hotte (Harvesting basket)", "21 Fructidor": "Églantier (Wild Rose)", "22 Fructidor": "Noisette (Hazelnut)", "23 Fructidor": "Houblon (Hops)", "24 Fructidor": "Sorgho (Sorghum)", "25 Fructidor": "Écrevisse (Crayfish)", "26 Fructidor": "Bigarade (Bitter Orange)", "27 Fructidor": "Verge d'or (Goldenrod)", "28 Fructidor": "Maïs (Maize or Corn)", "29 Fructidor": "Marron (Sweet Chestnut)", "30 Fructidor": "Panier (Pack Basket)"]
        
        var today_name = "C'est un jour complémentaire!"
        var monarch_abolishion_date = "9-21-1792"
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        let startDate:NSDate! = dateFormatter.dateFromString(monarch_abolishion_date)
        let endDate:NSDate! = dateFormatter.dateFromString(date_string)
        let cal = NSCalendar.currentCalendar()
        let unit:NSCalendarUnit = .DayCalendarUnit
        var comp = cal.components(unit, fromDate: startDate, toDate: endDate, options: nil)
        let total_days = Int(comp.day) // verify
        let today_french_date = computeFrenchDate(total_days)
        let today_french_date2 : NSString! = greg2jac[date_string]
        if today_french_date2 != nil
        {
            assert(today_french_date2 == today_french_date, "miscalculated")
        }
        for (french_date, day_name) in jacobin_day2name {
            if today_french_date.hasPrefix(french_date) {
                today_name = "C'est " + day_name + " aujourd'hui"
            }
        }
        let alertController = UIAlertController(
            title:today_french_date,
            message:today_name,
            preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion:nil)
    }
}


func rnConverter(arab_number: Int) -> String
{
    // convert an arabic number to a roman numeral
    var Ms = 0 // number of M's i.e. thousands
    var Cs = 0 // number of C's i.e. hundreds
    var Xs = 0 // number of X's i.e. tens
    var remainder = 0
    var romanNumeral = "" // accumulated final out
    Ms = Int(arab_number / 1000)
    romanNumeral += "".join(Array(count: Ms, repeatedValue: "M"))
    remainder = arab_number % 1000
    if (remainder == 999)
    {
        romanNumeral += "CMXCIX"
        remainder = 0
    }
    else if remainder > 989
    {
        romanNumeral = romanNumeral + "CMXC"
        remainder -= 990
    }
    else if remainder > 899
    {
        romanNumeral = romanNumeral + "CM"
        remainder -= 900
    }
    else if remainder > 499
    {
        romanNumeral = romanNumeral + "D"
        remainder -= 500
    }
    else if remainder > 489
    {
        romanNumeral = romanNumeral + "CDXC"
        remainder -= 490
    }
    else if remainder > 399
    {
        romanNumeral = romanNumeral + "CD"
        remainder -= 400
    }
    Cs = Int(remainder / 100)
    romanNumeral += "".join(Array(count: Cs, repeatedValue: "C"))
    remainder = remainder % 100
    if (remainder == 99)
    {
        romanNumeral += "XCIX"
        remainder = 0
    }
    if (remainder > 89)
    {
        romanNumeral += "XC"
        remainder -= 90
    }
    else if (remainder > 49)
    {
        romanNumeral += "L"
        remainder -= 50
    }
    else if (remainder > 39)
    {
        romanNumeral += "XL"
        remainder -= 40
    }
    Xs = Int(remainder / 10)
    romanNumeral += "".join(Array(count: Xs, repeatedValue: "X"))
    remainder = remainder % 10
    if remainder == 9
    {
        romanNumeral += "IX"
        remainder = 0
    }
    else if remainder > 4
    {
        romanNumeral = romanNumeral + "V"
        remainder -= 5
    }
    else if remainder == 4
    {
        romanNumeral = romanNumeral + "IV"
        remainder -= 4
    }
    romanNumeral += "".join(Array(count: remainder, repeatedValue: "I"))
    return romanNumeral
}


func computeFrenchDate(total_days : Int) -> String
{
    var daycount = 1
    var revday = 0
    var revmthnum = 1
    var revmonth = ""
    var revyr = 1
    var leap = false
    while daycount <= total_days
    {
        revday = revday + 1
        if revday == 31 {
            revday = 1
            revmthnum = revmthnum + 1
        }
        if revmthnum == 13 {
            leap = false
            //4 "if" statements apply the Romme rule for French leap years
            if revyr == 3 || revyr == 7 || revyr == 11 || revyr == 15 { // replace with in list
                leap = true
            }
            if revyr >= 20 && revyr % 4 == 0 {
                leap = true
            }
            if revyr >= 100 && revyr % 100 == 0 {
                leap = false
            }
            if revyr >= 400 && revyr % 400 == 0 {
                leap = true
            }
            if !leap {
                if revday > 5 {
                    revday = 1
                    revmthnum = 1
                    revyr = revyr + 1
                }
            }
            if leap {
                if revday > 6 {
                    revday = 1
                    revmthnum = 1
                    revyr += 1
                }
            }
        }
        daycount = daycount + 1
        switch(revmthnum) // TODO: replace with dict
        {
            case 1:
                 revmonth = "Vendémiaire"   //vintage
            case 2:
                 revmonth = "Brumaire"      //fog
            case 3:
                 revmonth = "Frimaire"      //sleet
            case 4:
                 revmonth = "Nivôse"       //snow
            case 5:
                 revmonth = "Pluviôse"      //rain
            case 6:
                 revmonth = "Ventôse"       //wind
            case 7:
                 revmonth = "Germinal"      //seed
            case 8:
                 revmonth = "Floréal"       //blossom
            case 9:
                 revmonth = "Prairial"      //pasture
            case 10:
                 revmonth = "Messidor"     //harvest
            case 11:
                 revmonth = "Thermidor"    //heat
            case 12:
                 revmonth = "Fructidor"    //fruit
            case 13:
                 revmonth = "Sans-culottide"
            default:
                revmonth = "Error"
        }
    }
    var romnum = rnConverter(revyr)
    var answer = String(revday) + " " + String(revmonth) + " " + romnum
    return answer
}
