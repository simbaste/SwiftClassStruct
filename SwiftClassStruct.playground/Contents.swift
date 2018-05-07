//: Playground - noun: a place where people can play

import UIKit

/*:
    Comparing Classes and Structures
    -In common:
        1) Define properties to store values
        2) Define methods to provide functionality
        3) Define subscripts to provide access to their values using subscript syntax
        4) Define initializers to set up their initial state
        5) Be extended to expand their functionality beyond a default implementation
        6) Conform to protocols to provide standard functionality of a certain kind
 
    -Classes have additional capabilities that structures do not:
        1) Inheritance enables one class to inherit the characteristics of another
        2) Type casting enables you to check and interpret the type of a class instance at runtime
        3) Deinitializers enable an instance of a class to free up any resources it has assigned
        4) Reference counting allows more than one reference to a class instance
 
    -Diference
        1) Unlike structures, class instances do not receive a default memberwise initializer
 
 Structures are always copied when they are passed around in your code, and do not use reference counting
 */

//: Definition Syntax

class SomeClass {
    // class definition goes here
}

struct SomeStructure {
    // Struct definition goes here
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//: Class and Structure Instances

let someResolution = Resolution()
let someVideoMode = VideoMode()

//: Accessing Properties

print("The width of someResolution is \(someResolution.width)")

someVideoMode.resolution.width = 1280

print("The width of someVideoMode is \(someVideoMode.resolution.width)")

//: Memberwise Initializers for Structure Types

/*:
    All structures have an automatically-generated memberwise initializer,
    which you can use to initialize the member properties of new structure instances
 */

let vga = Resolution(width: 640, height: 480)

print("width of vga is \(vga.width)")

//: Structures and Enumerations Are Value Types

/*:
    A value type is a type whose value is copied when it is assigned
    to a variable or constant, or when it is passed to a function
 */

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048

print("cinema has \(cinema.width) pixels wide and \(cinema.height) pixels high")

print("hd is still \(hd.width) pixels wide and \(hd.height) pixels high")

//: Classes Are Reference Types

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

/*:
    Because classes are reference types, tenEighty and alsoTenEighty actually both refer to the same VideoMode instance.
    Effectively, they are just two different names for the same single instance.
 */

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

//: Identity Operators
/*:
    To enable this, Swift provides two identity operators:
        Identical to (===)
        Not identical to (!==)
*/

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

/*:
    The same is not true for structures and enumerations, because they are always copied
    when they are assigned to a constant or variable, or passed to a function
 */




print("Hello world")



















