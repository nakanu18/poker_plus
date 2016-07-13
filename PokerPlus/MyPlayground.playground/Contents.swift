//: Playground - noun: a place where people can play

import UIKit

enum TextAlignment: Int {
    case Left    = 20
    case Right   = 30
    case Center  = 40
    case Justify = 50
}

var alignment = TextAlignment.Justify

if alignment == .Right {
    print("we should right-align the text!")
}

print("Left has raw value \(TextAlignment.Left.rawValue)")
print("Right has raw value \(TextAlignment.Right.rawValue)")
print("Center has raw value \(TextAlignment.Center.rawValue)")
print("Justify has raw value \(TextAlignment.Justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

let myRawValue = 20

if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("success")
} else {
    print("fail")
}

switch alignment {
case .Left :
    print("left aligned")
case .Right:
    print("right aligned")
case .Center:
    print("center aligned")
case .Justify:
    print("justified")
}



enum ProgrammingLanguage: String {
    case Swift      = "Swift"
    case ObjectiveC = "Objective-C"
    case C          = "C"
    case Cpp        = "C++"
    case Java       = "Java"
}

let myFavoriteLanguage = ProgrammingLanguage.Cpp
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")






enum Lightbulb {
    case On
    case Off
    
    func surfaceTempForAmbientTemp(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0
        case .Off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var bulb = Lightbulb.On
let ambientTemp = 77.0

bulb.toggle()
var bulbTemp = bulb.surfaceTempForAmbientTemp(ambientTemp)
print("bulbTemp \(bulbTemp)")


enum ShapeDimensions {
    case Point
    case Square(Double)
    case Rectangle(width: Double, height: Double)

    func area() -> Double {
        switch self {
        case Point:
            return 0
        case let .Square(side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")




