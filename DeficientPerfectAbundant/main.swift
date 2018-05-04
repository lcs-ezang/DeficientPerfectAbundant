//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//Create a global variable that will store the valid input
var validInput = 0

//Input
while 0 == 0 {

    //Get the user input
    //Make sure the input was given (create a String from the String?)
    guard let givenInput = readLine() else {
        //Nil detected, quit
        continue
    }
    //Make sure the input was given (create a Int from the String)
    guard let integerInput = Int(givenInput) else {
       //If we can't convert an integer
        //then quit
            continue
    }

    //Check for if input is in the range
    if integerInput < 1 || integerInput > 32500 {
        //If not in range, quit
        continue
    }

    //Passed the tests
    validInput = integerInput
    break
    
}
// Print out the input provided
print("You said: \(validInput)")

//Check for 1
if validInput == 1 {
    print("1 is a deficient number")
    //Finish the program
    exit(9)
}

//Keep track of divisible numbers
var divisibleNumbers = 1

for i in stride(from: validInput / 2, through: 2, by: -1) {
    if validInput%i == 0 {
        divisibleNumbers += i
    }
}
if divisibleNumbers == validInput {
    print("\(validInput) is a perfect number")
} else if divisibleNumbers < validInput {
    print("\(validInput) is a deficient number")
} else {
    print("\(validInput) is a abundant number")
}

