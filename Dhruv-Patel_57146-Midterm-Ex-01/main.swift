//
//  main.swift
//  Dhruv-Patel_57146-Midterm-Ex-01
//
//  Created by Xcode User on 2018-10-15.
//  Copyright © 2018 Sheridancollege. All rights reserved.
//

import Foundation

func formatSalaryString(HourlyEmployee: HourlyEmployee) -> String {
    return HourlyEmployee.name + "'s salary for this week:" + String(HourlyEmployee.CalculateWeeklySalary());
}

// Creating 2 Employee Objects
let emp1 = HourlyEmployee(name: "Malav Patel", hourlyRate: 15, hours: 10)
let emp2 = HourlyEmployee(name: "Heer Patel", hourlyRate: 20, hours: 55)


print(formatSalaryString(HourlyEmployee: emp1))
print(formatSalaryString(HourlyEmployee: emp2))

// Testing invalid Value for Hours
emp1.hours = 85

// Private setter for HourlyRate so This will not work
//emp1.hourlyRate = 55

// Changing values
emp2.hours = 25
print(formatSalaryString(HourlyEmployee: emp2))
// Changing values
emp2.hours = 40
print(formatSalaryString(HourlyEmployee: emp2))
// Changing values
emp2.hours = 41
print(formatSalaryString(HourlyEmployee: emp2))





