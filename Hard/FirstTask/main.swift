//
//  main.swift
//  FirstTask
//
//  Created by user on 24.03.17.
//  Copyright © 2017 user. All rights reserved.
//

import Foundation
import Darwin

//
// Сложный уровень
//


let string = "Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.  Closures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables. Swift handles all of the memory management of capturing for you.  NOTE  Don’t worry if you are not familiar with the concept of capturing. It is explained in detail below in Capturing Values.  Global and nested functions, as introduced in Functions, are actually special cases of closures. Closures take one of three forms:  Global functions are closures that have a name and do not capture any values. Nested functions are closures that have a name and can capture values from their enclosing function. Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context. Swift’s closure expressions have a clean, clear style, with optimizations that encourage brief, clutter-free syntax in common scenarios. These optimizations include:  Inferring parameter and return value types from context Implicit returns from single-expression closures Shorthand argument names Trailing closure syntax"

let characters = string.characters.split{$0 == " "}.map(String.init)

func sortByLength(_ s1: String, _ s2: String) -> Bool {
    return s1.characters.count > s2.characters.count
}

let sortedCharacters = characters.sorted(by: sortByLength)
print(sortedCharacters)
