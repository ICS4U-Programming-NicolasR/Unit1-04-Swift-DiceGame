//
// DiceGame.swift
//
//  Created by Nicolas Riscalas
//  Created on 2023-02-27
//  Version 1.0
//  Copyright (c) 2023 Nicolas Riscalas. All rights reserved.
//
//  Creates a dice game
import Foundation
import Glibc
// Set constants
let randomNum = Int.random(in: 1..<7)
var counter = 0
var userNum: Int?
userNum = nil
repeat {
    // ask the user for their number
    print("Please enter a number from 1-6 for the \(Int(counter + 1)) time")
    userNum = Int(readLine()!)
    //Try to get the input as a double if the response is nil then print an error
    if userNum != nil {
        // If statement to check if the number is too high or too low or out of bounds
        if (userNum)! < 0 || (userNum)! > 6 {
            print("You have entered in a number that is outside of the random number bounds")
        } else if (userNum)! > randomNum {
            print("The number is lower than that!")
        } else if (userNum)! < randomNum {
            print("The number is higher than that!")
        }
        // increase the counter by one
        counter += 1
    } else {
        // Print error
        print("You entered an invalid type of input you have to input an integer value")
        userNum = -1
    }
// Check if they got it correct
} while (userNum)! != randomNum
print("You guessed correct! it took you \(Int(counter)) tries")