//
//  Countdown Timer
//
//  Created by deathlezz on 27/07/2021.
//

import Foundation

print("* Welcome to Countdown Timer *")

func timer() {

    print()
    print("Enter date: [dd-MM-yyyy HH:mm]")

    let input = readLine()

    // Check date's format (dd-MM-yyyy HH:mm) and validation (e.g. month = 1...12, day = 1...31 etc.)
    let dateRegex = "^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[012])-(20)\\d\\d ([01][0-9]|2[0-3]):([0-5][0-9])$"
    let dateTest = NSPredicate(format: "SELF MATCHES %@", dateRegex)
    let result = dateTest.evaluate(with: input)

    if (input != nil) == result {
        
        // Convert String to Date()
        let format = DateFormatter()
        format.calendar = .current
        format.dateFormat = "dd-MM-yyyy HH:mm"
        let eventDate = format.date(from: input!)
        
        while eventDate != nil {
        
            // Set current date
            let date = Date()
            
            // Set the calendar and calibrate the date
            let calendar = Calendar.current
            var components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
            components.second! += 1
            let currentDate = calendar.date(from: components)
            
            // Change dates' diference to days, hours, minutes and seconds
            let timeLeft = calendar.dateComponents([.day, .hour, .minute, .second], from: currentDate!, to: eventDate!)
            
            // Set the label
            let label = "Days: \(timeLeft.day!), Hours: \(timeLeft.hour!), Minutes: \(timeLeft.minute!), Seconds: \(timeLeft.second!)"
            
            if eventDate! > currentDate! {

                // Output every second
                print(label)
                sleep(1)
                
            } else if eventDate! == currentDate! {
             
                print("Ring, Ring.")
                return timer()
                
            } else {
                print()
                print("* Date must be bigger than current date *")
                return timer()
            }
        }

    } else {
        print()
        print("* Incorrect date format *")
        return timer()
    }
}
timer()
