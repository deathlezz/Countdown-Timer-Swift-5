//
//  Countdown Timer(formula2)
//
//  Created by deathlezz on 29/05/2021.
//

import Foundation

// Set event date
let eventDate = DateComponents(year: 2021, month: 7, day: 28, hour: 12, minute: 35)

// Set current date
let date = Date()
let userCalendar = Calendar.current
let components = userCalendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
let currentDate = userCalendar.date(from: components)!
        
// Convert eventDate's calendar to the user's calendar
let convertedEventDate = userCalendar.date(from: eventDate)!
        
// Convert dates' diference to days, hours, minutes and seconds
let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

// Set the countdown label
let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

// Final output
print(countDownLabel)
