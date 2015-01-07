//
//  DateModule.swift
//  jCal
//
//  Created by Alexander Robertson on 1/4/15.
//  Copyright (c) 2015 Alexander Robertson. All rights reserved.
//

import Foundation

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
    if decimal_minutes < 10 {
        minute_zero_pad = "0"
    }
    if decimal_seconds < 10 {
        second_zero_pad = "0"
    }
    return ("Décimal temps: \n" + String(decimal_hour) + ":" +
        minute_zero_pad + String(decimal_minutes) + ":" +
        second_zero_pad + String(decimal_seconds))
}

func get_days_since_abolition() -> Int {
    let date = NSDate()
    let flags: NSCalendarUnit = .DayCalendarUnit | .MonthCalendarUnit | .YearCalendarUnit
    let components = NSCalendar.currentCalendar().components(flags, fromDate: date)
    let year = components.year
    let month = components.month
    let day = components.day
    let date_string = String(month) + "-" + String(day) + "-" + String(year)
    return get_days_between_abolition(date_string)
}

func get_days_between_abolition(date_string: String) -> Int {
    let flags: NSCalendarUnit = .DayCalendarUnit | .MonthCalendarUnit | .YearCalendarUnit
    let monarch_abolishion_date = "9-21-1792"
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "MM-dd-yyyy"
    let startDate:NSDate! = dateFormatter.dateFromString(monarch_abolishion_date)
    let endDate:NSDate! = dateFormatter.dateFromString(date_string)
    let cal = NSCalendar.currentCalendar()
    let unit:NSCalendarUnit = .DayCalendarUnit
    let comp = cal.components(unit, fromDate: startDate, toDate: endDate, options: nil)
    let total_days = Int(comp.day) // verify
    return total_days
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