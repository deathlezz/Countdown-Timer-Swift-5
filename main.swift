//
//  Countdown Timer
//
//  Created by deathlezz on 2/06/2021.
//


import Foundation


print("* Welcome to Countdown Timer *")
print()

// Set current date
let date = Date()
let userCalendar = Calendar.current
let components = userCalendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
let currentDate = userCalendar.date(from: components)!
        
// Set future calendar
let longerMonth = [1, 3, 5, 7, 9, 11]                          // months contains 31 days
let shorterMonth = [4, 6, 8, 10, 12]                           // months contains 30 days
let leapYears = [2024, 2028, 2032, 2036, 2040, 2044, 2048]     // leap years till 2050

// Set event date & future calendar
func futureDate() {
    
    var eventDate = DateComponents()
    
    print("Enter year:")
    
    eventDate.year = Int(readLine()!)
    
    if eventDate.year != nil && eventDate.year! > components.year! && eventDate.year! <= 2050 {
        
        func eventDateMonth() {
        
            print("Enter month:")
            
            eventDate.month = Int(readLine()!)
            
            if eventDate.month != nil && eventDate.month! >= 1 && eventDate.month! <= 12 {
            
                if longerMonth.contains(eventDate.month!) {
                
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 31 {
                        
                            func eventDateHour() {
                            
                                print("Enter hour:")
                                
                                eventDate.hour = Int(readLine()!)
                                
                                if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                } else {
                                    print()
                                    print("* Incorrect value *")
                                    print()
                                    return eventDateHour()
                                }
                            }
                            
                            eventDateHour()
                            
                        } else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    }
                    
                    eventDateDay()
                }
                
                else if shorterMonth.contains(eventDate.month!) {
                    
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 30 {
                        
                            func eventDateHour() {
                            
                                print("Enter hour:")
                                
                                eventDate.hour = Int(readLine()!)
                                
                                if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                } else {
                                    print()
                                    print("* Incorrect value *")
                                    print()
                                    return eventDateHour()
                                }
                            }
                            
                            eventDateHour()
                            
                        } else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    
                    }
                    
                    eventDateDay()
    
                }
                
                else if eventDate.month == 2 {     // february
                    
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if leapYears.contains(eventDate.year!) {     // 366 days year (leap year)
                        
                            if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 29 {
                            
                                func eventDateHour() {
                                
                                    print("Enter hour:")
                                    
                                    eventDate.hour = Int(readLine()!)
                                    
                                    if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                    
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                                
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    } else {
                                        print()
                                        print("* Incorrect value *")
                                        print()
                                        return eventDateHour()
                                    }
                                }
                                
                                eventDateHour()
                                
                            } else {
                                print()
                                print("* Incorrect value *")
                                print()
                                return eventDateDay()
                            }
                        }
                        
                        else if !leapYears.contains(eventDate.year!) {     // 365 days year (regular year)
                            
                            if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 28 {
                            
                                func eventDateHour() {
                                
                                    print("Enter hour:")
                                    
                                    eventDate.hour = Int(readLine()!)
                                    
                                    if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                    
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                    
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    } else {
                                        print()
                                        print("* Incorrect value *")
                                        print()
                                        return eventDateHour()
                                    }
                                }
                                
                                eventDateHour()
                                
                            } else {
                                print()
                                print("* Incorrect value *")
                                print()
                                return eventDateDay()
                            }
                        }
                        
                        else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    }
                    
                    eventDateDay()
                    
                }
                
                else {
                    print()
                    print("* Incorrect value *")
                    print()
                    return eventDateMonth()
                }
                
            } else {
                print()
                print("* Incorrect value *")
                print()
                return eventDateMonth()
            }
        }
        
        eventDateMonth()
        
    }
    
    else if eventDate.year != nil && eventDate.year! == components.year! && eventDate.year! <= 2050 {
        
        func eventDateMonth() {
        
            print("Enter month:")
            
            eventDate.month = Int(readLine()!)
            
            if eventDate.month != nil && eventDate.month! > components.month! && eventDate.month! <= 12 {
            
                if longerMonth.contains(eventDate.month!) {
                
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 31 {
                        
                            func eventDateHour() {
                            
                                print("Enter hour:")
                                
                                eventDate.hour = Int(readLine()!)
                                
                                if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                }
                                
                                else {
                                    print()
                                    print("* Incorrect value *")
                                    print()
                                    return eventDateHour()
                                }
                            }
                            
                            eventDateHour()
                            
                        } else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    }
                    
                    eventDateDay()
                    
                }
                
                else if shorterMonth.contains(eventDate.month!) {
                    
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 30 {
                        
                            func eventDateHour() {
                            
                                print("Enter hour:")
                                
                                eventDate.hour = Int(readLine()!)
                                
                                if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                } else {
                                    print()
                                    print("* Incorrect value *")
                                    print()
                                    return eventDateHour()
                                }
                            }
                            
                            eventDateHour()
                            
                        } else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    }
                    
                    eventDateDay()
                    
                }
                
                else if eventDate.month == 2 {
                    
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if leapYears.contains(eventDate.year!) {
                        
                            if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 29 {
                            
                                func eventDateHour() {
                                
                                    print("Enter hour:")
                                    
                                    eventDate.hour = Int(readLine()!)
                                    
                                    if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                    
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                                
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    } else {
                                        print()
                                        print("* Incorrect value *")
                                        print()
                                        return eventDateHour()
                                    }
                                }
                                
                                eventDateHour()
                                
                            } else {
                                print()
                                print("* Incorrect value *")
                                print()
                                return eventDateDay()
                            }
                        }
                        
                        else if !leapYears.contains(eventDate.year!) {
                            
                            if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! <= 28 {
                            
                                func eventDateHour() {
                                
                                    print("Enter hour:")
                                    
                                    eventDate.hour = Int(readLine()!)
                                    
                                    if eventDate.hour != nil &&  eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                    
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                    
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return futureDate()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    } else {
                                        print()
                                        print("* Incorrect value *")
                                        print()
                                        return eventDateHour()
                                    }
                                }
                                
                                eventDateHour()
                                
                            } else {
                                print()
                                print("* Incorrect value *")
                                print()
                                return eventDateDay()
                            }
                        }
                        
                        else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    }
                    
                    eventDateDay()
                    
                }
                
                else {
                    print()
                    print("* Incorrect value *")
                    print()
                    return eventDateMonth()
                }
            }
            
            else if eventDate.month != nil && eventDate.month! == components.month! && eventDate.month! <= 12 {
            
                if longerMonth.contains(eventDate.month!) {
                
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! > components.day! && eventDate.day! <= 31 {
                        
                            func eventDateHour() {
                            
                                print("Enter hour:")
                                
                                eventDate.hour = Int(readLine()!)
                                
                                if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                } else {
                                    print()
                                    print("* Incorrect value *")
                                    print()
                                    return eventDateHour()
                                }
                            }
                            
                            eventDateHour()
                            
                        }
                        
                        else if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! == components.day! && eventDate.day! <= 31 {
                        
                            func eventDateHour() {
                            
                                print("Enter hour:")
                                
                                eventDate.hour = Int(readLine()!)
                                
                                if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! > components.hour! && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                }
                                
                                else if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! == components.hour! && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! > components.minute! && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                }
                                else {
                                    print()
                                    print("* Incorrect value *")
                                    print()
                                    return eventDateHour()
                                }
                            }
                            
                            eventDateHour()
                            
                        }
                        
                        else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    }
                    
                    eventDateDay()
                    
                }
                
                else if shorterMonth.contains(eventDate.month!) {
                    
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! > components.day! && eventDate.day! <= 30 {
                        
                            func eventDateHour() {
                            
                                print("Enter hour:")
                                
                                eventDate.hour = Int(readLine()!)
                                
                                if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                } else {
                                    print()
                                    print("* Incorrect value *")
                                    print()
                                    return eventDateHour()
                                }
                            }
                            
                            eventDateHour()
                            
                        }
                        
                        else if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! == components.day! && eventDate.day! <= 30 {
                        
                            func eventDateHour() {
                            
                                print("Enter hour:")
                                
                                eventDate.hour = Int(readLine()!)
                                
                                if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! > components.hour! && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                }
                                
                                else if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! == components.hour! && eventDate.hour! <= 23 {
                                
                                    func eventDateMinute() {
                                    
                                        print("Enter minute:")
                                        
                                        eventDate.minute = Int(readLine()!)
                                        
                                        if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! > components.minute! && eventDate.minute! <= 59 {
                                            
                                            // Convert eventDate to the user's calendar
                                            let convertedEventDate = userCalendar.date(from: eventDate)!
                                                    
                                            // Change the seconds to days, hours and minutes
                                            let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                            // Set the countdown label
                                            let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                            // Final output
                                            print(countDownLabel)
                                            print()
                                            
                                        } else {
                                            print()
                                            print("* Incorrect value *")
                                            print()
                                            return eventDateMinute()
                                        }
                                    }
                                    
                                    eventDateMinute()
                                    
                                }
                                else {
                                    print()
                                    print("* Incorrect value *")
                                    print()
                                    return eventDateHour()
                                }
                            }
                            
                            eventDateHour()
                            
                        }
                        
                        else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    }
                    
                    eventDateDay()
                    
                }
                
                else if eventDate.month == 2 {
                    
                    func eventDateDay() {
                    
                        print("Enter day:")
                        
                        eventDate.day = Int(readLine()!)
                        
                        if leapYears.contains(eventDate.year!) {
                        
                            if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! > components.day! && eventDate.day! <= 29 {
                            
                                func eventDateHour() {
                                
                                    print("Enter hour:")
                                    
                                    eventDate.hour = Int(readLine()!)
                                    
                                    if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                    
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                                
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    } else {
                                        print()
                                        print("* Incorrect value *")
                                        print()
                                        return eventDateHour()
                                    }
                                }
                                
                                eventDateHour()
                                
                            }
                            
                            else if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! == components.day! && eventDate.day! <= 29 {
                                
                                func eventDateHour() {
                                
                                    print("Enter hour:")
                                    
                                    eventDate.hour = Int(readLine()!)
                                    
                                    if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! > components.hour! && eventDate.hour! <= 23 {
                                    
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                                
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    }
                                    
                                    else if eventDate.hour != nil && eventDate.hour! >= 0 && eventDate.hour! == components.hour! && eventDate.hour! <= 23 {
                                        
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! > components.minute! && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                                
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    }
                                    
                                    else {
                                        print()
                                        print("* Incorrect value *")
                                        print()
                                        return eventDateHour()
                                    }
                                }
                                
                                eventDateHour()
                                
                            }
                            
                            else {
                                print()
                                print("* Incorrect value *")
                                print()
                                return eventDateDay()
                            }
                        }
                        
                        else if !leapYears.contains(eventDate.year!) {
                            
                            if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! > components.day! && eventDate.day! <= 28 {
                            
                                func eventDateHour() {
                                
                                    print("Enter hour:")
                                    
                                    eventDate.hour = Int(readLine()!)
                                    
                                    if eventDate.hour != nil &&  eventDate.hour! >= 0 && eventDate.hour! <= 23 {
                                    
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                                
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    } else {
                                        print()
                                        print("* Incorrect value *")
                                        print()
                                        return eventDateHour()
                                    }
                                }
                                
                                eventDateHour()
                                
                            }
                            
                            else if eventDate.day != nil && eventDate.day! >= 1 && eventDate.day! == components.day! && eventDate.day! <= 28 {
                                
                                func eventDateHour() {
                                
                                    print("Enter hour:")
                                    
                                    eventDate.hour = Int(readLine()!)
                                    
                                    if eventDate.hour != nil &&  eventDate.hour! >= 0 && eventDate.hour! > components.hour! && eventDate.hour! <= 23 {
                                    
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                                
                                            } else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                        }
                                        
                                        eventDateMinute()
                                        
                                    }
                                    
                                    else if eventDate.hour != nil &&  eventDate.hour! >= 0 && eventDate.hour! == components.hour! && eventDate.hour! <= 23 {
                                        
                                        func eventDateMinute() {
                                        
                                            print("Enter minute:")
                                            
                                            eventDate.minute = Int(readLine()!)
                                            
                                            if eventDate.minute != nil && eventDate.minute! >= 0 && eventDate.minute! > components.minute! && eventDate.minute! <= 59 {
                                                
                                                // Convert eventDate to the user's calendar
                                                let convertedEventDate = userCalendar.date(from: eventDate)!
                                                        
                                                // Change the seconds to days, hours and minutes
                                                let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: convertedEventDate)

                                                // Set the countdown label
                                                let countDownLabel = "\(timeLeft.day!) Days, \(timeLeft.hour!) Hours, \(timeLeft.minute!) Minutes, \(timeLeft.second!) Seconds"

                                                // Final output
                                                print(countDownLabel)
                                                print()
                                                
                                            }
                                            else {
                                                print()
                                                print("* Incorrect value *")
                                                print()
                                                return eventDateMinute()
                                            }
                                
                                        }
                                        
                                        eventDateMinute()
                                        
                                    }
                                    else {
                                        print()
                                        print("* Incorrect value *")
                                        print()
                                        return eventDateHour()
                                    }
                                }
                                
                                eventDateHour()
                                
                            }
                            
                            else {
                                print()
                                print("* Incorrect value *")
                                print()
                                return eventDateDay()
                            }
                        }
                        
                        else {
                            print()
                            print("* Incorrect value *")
                            print()
                            return eventDateDay()
                        }
                    }
                    
                    eventDateDay()
                    
                }
                
                else {
                    print()
                    print("* Incorrect value *")
                    print()
                    return eventDateMonth()
                }
            }
            
            else {
                print()
                print("* Incorrect value *")
                print()
                return eventDateMonth()
            }
        }
        
        eventDateMonth()
        
    }
    
    else {
        print()
        print("* Incorrect value *")
        print()
        return futureDate()
    }
}

futureDate()
