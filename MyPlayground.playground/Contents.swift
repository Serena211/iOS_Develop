//: Playground - noun: a place where people can play

// import a framework, which is code that is proviede to you to use
// a UIKit emcompasses all of the UI stuff that you need to build an iOS app and to use very basic stuff, like strings, and images, etc.
import UIKit

// Define variables: VAR or LET
var s:String? = nil     // ? may not be String
s = "Hey"

var str:String = "Hello, playground"

var num = 3

print(num)

var image = UIImage(named: "tomcat.png")

// let is safer, and if something's not supposed to change, define it as a constant
let constant = "Cannot be changed!!!"

// Control flow

for number in [2,3,5,6,0] {
    number * number
}

// Arrays and Dictionaries
var animals:[String] = ["Cow","Dog","Bunny"]     // define an array
//animals[0] = "Cat"

for animal in animals {
    animal
}

var cuteness = ["Cow" : "Not Very",
                "Dog" : "Cute",
                "Bunny" : "Very Cute"]

cuteness["Dog"]

for animal in animals {
    cuteness[animal]
}

// Function
func doMath(operation: String, on a: Double, and b: Double ) -> Double {
    print("Doing Math")
    print("Performing", operation, "on", a, "and",b)
    var rsl:Double = 0
    switch operation {
        case "+": rsl = a + b
        case "-": rsl = a - b
        case "*": rsl = a * b
        case "/": rsl = a / b
    default: print("Bad operation", operation)
    }
    return rsl
}
let result = doMath("+", on: 1.0, and: 2.0)

