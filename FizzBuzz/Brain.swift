//
//  Brain.swift
//  FizzBuzz
//
//  Created by Incheol-iMac on 2016. 6. 7..
//  Copyright © 2016년 captv. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(15, number: number)
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return (number % divisor == 0)
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number) {
            return .FizzBuzz
        }
        if isDivisibleByThree(number) {
            return .Fizz
        }
        if isDivisibleByFive(number) {
            return .Buzz
        }
        
        // TODO: 값을 넣어줘야 하지 않을까? 
        return .Number
    }
}