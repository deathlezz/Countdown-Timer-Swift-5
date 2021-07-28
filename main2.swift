//
//  Countdown Timer
//
//  Created by deathlezz on 27/07/2021.
//

import Foundation

print("* Welcome to Countdown Timer *")

// Set event date
var eventDate = DateComponents()

func enterYear() {
    print()
    print("Enter year:")
    eventDate.year = Int(readLine()!)
    
    if eventDate.year != nil && eventDate.year! >= 2021 && eventDate.year! <= 2099 {
        
        func enterMonth() {
            print("Enter month:")
            eventDate.month = Int(readLine()!)
            
            if eventDate.month != nil && eventDate.month! >= 1 && eventDate.month! <= 12 {
            
                func enterDay() {
                    print("Enter day:")
                    eventDate.day = Int(readLine()!)
                    
                    if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 31 {
                        
                        func enterHour() {
                            print("Enter hour:")
                            eventDate.hour = Int(readLine()!)
                            
                            if eventDate.hour != nil && eventDate.hour! >= 1 && eventDate.hour! <= 23 {
                                
                                func enterMinute() {
                                    print("Enter minute:")
                                    eventDate.minute = Int(readLine()!)
                                    
                                    if eventDate.minute != nil && eventDate.minute! >= 1 && eventDate.minute! <= 59 {
                                        
                                        while eventDate.minute != nil {
                                        
                                            // Set current date
                                            let date = Date()
                                            let userCalendar = Calendar.current
                                            var components = userCalendar.dateComponents([.year, .month, .day, .hour, .minute,. second], from: date)
                                            components.second! += 1
                                            let currentDate = userCalendar.date(from: components)!
                                            
                                            // Convert eventDate to user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                            
                                            // Change dates' diference to days, hours, minutes and seconds
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)
                                            
                                            // Set the countdown label
                                            let label = "Days: \(timeLeft.day!), Hours: \(timeLeft.hour!), Miuntes: \(timeLeft.minute!), Seconds: \(timeLeft.second!)"
                                            
                                            if convertedEventDate > currentDate {

                                                // Output every second
                                                print(label)
                                                sleep(1)
                                                
                                            } else if convertedEventDate == currentDate {
                                                
                                                print("Ring, Ring.")
                                                return enterYear()
                                                
                                            } else {
                                                print()
                                                print("* Date must be bigger than current date *")
                                                return enterYear()
                                            }
                                        }
                                        
                                    } else {
                                        print()
                                        print("* Incorrect minute *")
                                        print()
                                        return enterMinute()
                                    }
                                }
                                enterMinute()
                                
                            } else {
                                print()
                                print("* Incorrect hour *")
                                print()
                                return enterHour()
                            }
                        }
                        enterHour()
                        
                    } else {
                        print()
                        print("* Incorrect day *")
                        print()
                        return enterDay()
                    }
                }
                enterDay()
                
            } else {
                print()
                print("* Incorrect month *")
                print()
                return enterMonth()
            }
        }
        enterMonth()
        
    } else {
        print()
        print("* Incorrect year *")
        return enterYear()
    }
}
enterYear()
