//
//  Countdown Timer (formula)
//
//  Created by deathlezz on 29/05/2021.
//

import Foundation

// Set dates
let futureDate: Date = {
    
    // Set the event date
    let future = DateComponents(year: 2021, month: 7, day: 28, hour: 13, minute: 4)
    
    // Set the current date
    return Calendar.current.date(from: future)!
    
}()

// Set the countdown
var countdown: DateComponents {
    
    // Convert dates' diference to days, hours, minutes and seconds
    return Calendar.current.dateComponents([.day, .hour, .minute, .second], from: Date(), to: futureDate)
}

// Set the countdown label
let countDownLabel = "\(countdown.day!) Days, \(countdown.hour!) Hours, \(countdown.minute!) Minutes, \(countdown.second!) Seconds"

// Output
print(countDownLabel)
