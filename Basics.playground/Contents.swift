import UIKit

//------Variables------
var firstName = "Wojciech"
print(firstName)

var stockPrice = 100
print(stockPrice)
stockPrice = 20
print(stockPrice)

//------Constants------
let lastName = "Rosinski"
let weight: Double
weight = 62.5
print(weight)

let conversionToStr = lastName + " " + String(weight)
print(conversionToStr)

let includingValuesInStr = "The weight is \(weight) kilograms."
print(includingValuesInStr)

print("The weight is \(weight + 22.5) kilograms.")

//------Strings------
let quotation = """
I try to learn Swift programming.
It doesn't seem hard at the first sight.
"""

print(quotation)

//------Arrays and dictionaries------
var colors = ["red", "green", "blue", "yellow"]
colors[2] = "pink"
print(colors);

var translations = [
    "porch": "weranda",
    "maiden name": "nazwisko panieńskie",
    "bold": "odważny",
]

translations["hometown"] = "miejscowość rodzinna"
print(translations)

colors.append("black")
print(colors)

let emptyArray: [String] = []
let emptyDict: [String: Float] = [:]

colors = []
translations = [:]
print(colors)
print(translations)

//------Control flow------
let scores = [5, 10, 15, 12, 3]
var teamScore = 0
for score in scores {
    if score > 10 {
        teamScore += 2
    } else {
        teamScore += 1
    }
}

print(teamScore)

//Optional values
var optionalValue: Int? = 5
print(optionalValue == nil)
var optionalValue2: Int?
print(optionalValue2 == nil)

var optionalName: String? = "Wojciech Rosinski"
//optionalName = nil
var greeting = "Hey!"
if let name = optionalName {
    greeting = "Hey, \(name)"
}
print(greeting)

let nickname: String? = nil
let fullName: String = "Wojciech Rosinski"
let informalGreeting = "Hey \(nickname ?? fullName)"
print(informalGreeting)

//Switch
let city = "New York"
switch city {
case "Warsaw":
    print("Warsaw is the capital of Poland.")
case "Cracow":
    print("Cracow is located in the South of Poland")
case let x where x.hasSuffix("York"):
    print("\(x) is a city in the United States.")
default:
    print("It doesn't matter.")
}

//Loops
let randomNumbers = [
    "list1": [5, 6, 10, 50, 44],
    "list2": [22, 51, 109, 202],
    "list3": [15, 22, 219, 3, 134],
]

var largest = 0
for (_, numbers) in randomNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

//While
var i = 2
while i < 50 {
    i *= 2
}
print(i)

var j = 2
repeat {
    j *= 2
} while j < 50
print(j)

//Exclusive condition
var sum = 0
for k in 0..<5 {
    sum += k
}
print(sum)

//Inclusive condition
sum = 0
for k in 0...5 {
    sum += k
}
print(sum)
