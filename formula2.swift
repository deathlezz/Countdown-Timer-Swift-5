//
//  Countdown Timer(formula2)
//
//  Created by deathlezz on 29/05/2021.
//


import Foundation


// Set current date
let date = Date()
let userCalendar = Calendar.current
let components = userCalendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
let currentDate = userCalendar.date(from: components)!
        
// Set event date
var eventDate = DateComponents()
eventDate.year = 2022
eventDate.month = 5
eventDate.day = 25
eventDate.hour = 0
eventDate.minute = 0
        
// Convert eventDate to the user's calendar
let convertedEventDate = userCalendar.date(from: eventDate)!
        
// Change the seconds to days, hours and minutes
let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

// Set the countdown label
let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

// Final output
print(countDownLabel)
