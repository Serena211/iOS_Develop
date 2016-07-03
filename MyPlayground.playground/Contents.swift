//: Playground - noun: a place where people can play

// import a framework, which is code that is proviede to you to use
// a UIKit emcompasses all of the UI stuff that you need to build an iOS app and to use very basic stuff, like strings, and images, etc.
import UIKit

//----------------------------------------------------------------------------------
// Define variables: VAR or LET
var s:String? = nil     // ? may not be String
s = "Hey"

var str:String = "Hello, playground"

var num = 3

print(num)

var image = UIImage(named: "tomcat.png")

// let is safer, and if something's not supposed to change, define it as a constant
let constant = "Cannot be changed!!!"

let nickName: String? = "John"
let fullName: String = "John Appleseed"
// if the optional value is missing, the default value is used instead
let informalGreeting = "Hi \(nickName ?? fullName)"
let array = [Int](arrayLiteral: 1,3,4)

//----------------------------------------------------------------------------------
// Control flow

for number in [2,3,5,6,0] {
    number * number
}

//----------------------------------------------------------------------------------
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

//----------------------------------------------------------------------------------
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

// declare func in standard way
func performMagic(spell: String) -> String {
    return spell
}
// closures
var newMagicFunction = {
    (spell: String) -> String in
    return spell
}
//----------------------------------------------------------------------------------
// handle Image
var img = [[3,7,10],[6,3,6],[2,5,3]]
func raiseLowerValuesOfImage(inout img:[[Int]]) {       //inout: handle image by references
    for row in 0..<img.count {
        for col in 0..<img[row].count {
            if (img[row][col] < 5) {
                img[row][col] = 5
            }
        }
    }
}

raiseLowerValuesOfImage(&img)
img

//----------------------------------------------------------------------------------
// Properties: 
// struct: contain multiple elements, multiple variables of different types potentially
struct Animal {
    var name: String = ""
    var heightInches = 0.0
    var heightCM: Double {
        get {
            return 2.54 * heightInches
        }
        set (newHeightCM) {
            heightInches = newHeightCM / 2.54
        }
    }
}

var dog = Animal (name: "haha", heightInches: 50)
dog.heightInches
dog.heightCM

dog.heightCM = 150
dog.heightInches
dog.heightCM