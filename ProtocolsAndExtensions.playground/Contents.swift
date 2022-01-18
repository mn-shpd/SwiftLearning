import UIKit

protocol ExampleProtocol {
    var simpleDescription: String { get }
   // var anotherVariable: Int { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    var anotherVariable: Int = 200
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

//Structure's method modifying the structure has to be written with mutating before the method.
//Class doesn't have to cos methods on a class can always modify the class.
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    var anotherVariable: Int = 300
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

print(5.simpleDescription)

extension Double {
    var absoluteValue: Double {
        if self < 0 {
            return self * (-1)
        } else {
            return self
        }
    }
}

print((-20.5).absoluteValue)

//Protocol as a type
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
