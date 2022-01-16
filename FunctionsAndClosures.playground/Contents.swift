import UIKit

func greet(person: String, day: String, meal: String) -> String {
    return "Hey \(person), tomorrow is \(day). We'll have \(meal) for breakfast."
}

print(greet(person: "Wojciech", day: "Monday", meal: "scrambled eggs"))

func greet2(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet2("Tom", on: "Thursday"))

//Tuple as a return value.
func calculateStats(grades: [Float]) -> (min: Float, max: Float, avg: Float) {
    var min = grades[0]
    var max = grades[0]
    var sum : Float = 0.0;
    
    for grade in grades {
        if grade > max {
            max = grade
        } else if grade < min {
            min = grade
        }
        sum += grade
    }
    
    return (min, max, sum/Float(grades.count))
}

//Nested functions.
let result = calculateStats(grades: [2.5, 3, 5, 4.5, 4, 4])
print(result)
print(result.avg)

func doCalculations() -> Float {
    let x : Float = 5.0
    func add(a : Float, b : Float) -> Float {
        return a+b
    }
    return add(a: x, b: 10)
}

print(doCalculations())

//Function as a return value.
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
print(increment(2))

//Function as an argument.
func checkList(list: [Int], condition: (Int) -> Bool) -> Int {
    var result = 0
    for element in list {
        if(condition(element)) {
            result = element
            break
        }
    }
    return result
}

func isOdd(number : Int) -> Bool {
    if(number % 2 == 1) {
        return true
    } else {
        return false
    }
}

var numbersList = [2, 4, 5, 6, 8]

print(checkList(list: numbersList, condition: isOdd))

//Closures
numbersList.map({ (number: Int) -> Int in
    var result = number
    if(number % 2 == 1) {
        result = 0
    }
    return result
})

let mappedNumbers = numbersList.map({ number in 2 * number })
print(mappedNumbers)

let sortedNumbers = numbersList.sorted { $0 > $1 }
print(sortedNumbers)
