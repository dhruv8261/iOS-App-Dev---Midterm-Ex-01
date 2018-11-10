//
//  HourlyEmployee.swift
//  Dhruv-Patel_57146-Midterm-Ex-01
//
//  Created by Xcode User on 2018-10-15.
//  Copyright © 2018 Sheridancollege. All rights reserved.
//

import Foundation

public class HourlyEmployee {
    // properties
    public var name: String = ""
    public private(set) var hourlyRate: Double = 0.0
    //public var hours: Double = 0.0
    
    public var hours: Double = 0.0 {
        didSet {
            if hours < 0 || hours > 72 {
                print("Weekly hour(s) invalid, resetting to 0")
                hours = 0
            }
        }
    }

    public init(name: String, hourlyRate: Double,
                hours: Double)
    {

        self.name = name
    
        // Validation - for hours
        if hours > 0.0 || hours < 73 {
            self.hours = hours
        }
        // Validation - for hourlyRate
        if hourlyRate > 0.0 {
            self.hourlyRate = hourlyRate
        }
    }
    
    // Weekly Salary Calculator
    public func CalculateWeeklySalary() -> Double
    {
        var salary:Double = 0
        var otHours:Double = 0
        
        if hours > 40 {
            
            otHours = hours - 40
            hours = hours - otHours
        }
        
        
        salary = (hours*hourlyRate) + (otHours*hourlyRate*(1.5))
        
        return salary
        
    }
    
} // end class
