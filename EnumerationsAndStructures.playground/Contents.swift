import UIKit

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace.simpleDescription())
print(ace)

func compare(a: Rank, b: Rank) -> Bool {
    if(a.rawValue > b.rawValue) {
        return true
    } else {
        return false
    }
}

let x = Rank.ace
let y = Rank.five
print(compare(a: x, b: y))
print(compare(a: y, b: x))

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription =
    convertedRank.simpleDescription()
    print(threeDescription)
}

enum Suit: Int{
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades:
            return "black"
        case .clubs:
            return "black"
        case .hearts:
            return "red"
        case .diamonds:
            return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let color = hearts.color()
let color2 = Suit.clubs.color()

//Enumerations, stored properties
enum ServerResponse {
    case result(String, String)
    case failure(String)
    case random(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let random =  ServerResponse.random("Random response.")

switch random {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
case let .random(message):
    print("Random: \(message).")
}

//Structures - same as classes but when they're passed around code they're copied (classes are passed by reference)
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

func fullDeck() -> [Card] {
    var result = [Card]()
    var suitCount = 1
    while let suit = Suit(rawValue: suitCount) {
        var rankCount = 1
        while let rank = Rank(rawValue: rankCount) {
            result.append(Card(rank: rank, suit: suit))
            rankCount += 1
        }
        suitCount += 1
    }
    return result
}

fullDeck()

