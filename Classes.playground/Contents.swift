import UIKit
import Foundation

//Class
class Product {
    var name = "Unknown"
    var price: Double = 2.0
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
    func setPrice(price: Double) {
        self.price = price
    }
    func getPrice() -> Double {
        return price
    }
    func printName() {
        print("The product is \(name).")
    }
}

var myProduct = Product(name: "Cheese", price: 15.25)
print(myProduct.getPrice())
myProduct.setPrice(price: 25.5)
print(myProduct.getPrice())
myProduct.printName()

//Subclass
class Beverage: Product {
    var flavour : String
    
    init(name: String, price: Double, flavour: String) {
        self.flavour = flavour
        super.init(name: name, price: price)
    }
    
    override func printName() {
        print("The beverage is \(name).")
    }
    
    func getFlavour() -> String {
        return flavour
    }
}

var coke = Beverage(name: "Coca Cola", price: 0.8, flavour: "Sweet")
coke.printName()
print("The flavour is \(coke.getFlavour()).")

class Candy: Product {
    var kind: String
    
    init(name: String, price: Double, kind: String) {
        self.kind = kind
        super.init(name: name, price: price)
    }
    
    override func printName() {
        print("The candy is \(name).")
    }
    
    var description: String {
        get {
            return "\(name) - \(self.kind)."
        }
        set {
            self.kind = newValue
        }
    }
}

var milkyWay = Candy(name: "Milky Way", price: 1.5, kind: "Bar")
print(milkyWay.description)
milkyWay.description = "Chocolate Bar"
print(milkyWay.description)

class discountedProduct: Product {
    var cutPrice: Double = 1.0
    var discount: Double {
        didSet {
            self.cutPrice = super.price * (1-discount)
        }
    }
    
    init(name: String, price: Double, discount: Double) {
        self.discount = discount
        self.cutPrice = price * (1-discount)
        super.init(name: name, price: price)
    }
    
    override func getPrice() -> Double {
        return self.cutPrice
    }
}

var snickers = discountedProduct(name: "Snickers", price: 1.9, discount: 0.1)
print(snickers.getPrice())
snickers.discount = 0.2
print(snickers.getPrice())

//Optional values
let optionalCandy: Candy? = Candy(name: "ChupaChups", price: 0.2, kind: "Lollipop")
var price = optionalCandy?.price
print(price)
