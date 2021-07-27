//
//  Countdown Timer (formula)
//
//  Created by deathlezz on 29/05/2021.
//

import Foundation

// set the dates
let futureDate: Date = {
    
    // set the day in a future
    let future = DateComponents(year: 2022, month: 7, day: 0, hour: 0, minute: 0)
    
    // set the current date
    return Calendar.current.date(from: future)!
}()

// set the countdown
var countdown: DateComponents {
    
    // change the seconds to hours, minutes and days
    return Calendar.current.dateComponents([.day, .hour, .minute, .second], from: Date(), to: futureDate)
}

// set the variable to our remaining time
let days = countdown.day!
let hours = countdown.hour!
let minutes = countdown.minute!
let seconds = countdown.second!

// set the countdown label
let countDownLabel = "\(days) Days, \(hours) Hours, \(minutes) Minutes, \(seconds) Seconds"

// final output
print(countDownLabel)
