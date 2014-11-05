// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

println ("Hello, world")

var myVariable = 42
myVariable = 50
// myVariable = 42.3   // this will throw error as the type is int, not float

let myConstant = 42
// myConstant = 20  //this will throw error

let implicitInterger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70
let explicitFloat:Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String (width)
// let widthLabel2 = label + width //this will throw error as type convertion must be explicit

let apples  = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
println (shoppingList[1])
// println (shoppingList[10])  // this will throw error as exceed the array index

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()
let emptyDictionary = [String:Float]()

shoppingList = []
occupations  = [:]

let individuaScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individuaScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore
// if condition must be a Boolean expression

var optionalString: String? = "Hello"
optionalString == nil
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
optionalName = nil
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, everybody"
}

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log"
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix ("pepper"):
        let vegetableComment = "Is it a spciy \(x)?"
    
    default :
        let vegetableComment = "Everything tastes good in soup"
    // remove default would throw a error
}

let integestingNumbers =  [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9, 16,25],
]
var largest = 0
for (kind, numbers) in integestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest

var dataArray = [Int]()
for i in 0..<10 {
    dataArray.append (i)
}
dataArray

var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
do {
    m = m * 2
} while m < 100
m

var firstForLoop = 0
for i in 0..<4 {
    // 0..<4  means [0, 1, 2, 3]
    // 0...4  means [0, 1, 2, 3, 4]
    firstForLoop += i
}
firstForLoop
// i  // could not access i outside the for in statement

var secondForLoop = 0
for var i=0; i<4; ++i {
    secondForLoop += i
}
secondForLoop

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet ("Bob", "Tuesday")

func calculateStatistics (scores: [Int]) -> (max: Int, min:Int, sum: Int) {
    var min = scores[0];
    var max = scores[0];
    var sum = 0;
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (max, min, sum)
}

let statistics = calculateStatistics ([5,3,100,3,9])
statistics.sum
statistics.2

func sumOf (numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf ()
sumOf (42, 597, 12)

func avgOf (numbers: Int...) -> Double {
    var sum = 0
    if numbers.count == 0 {
        return 0
    }
    for number in numbers {
        sum += number
    }
    var len = Double (numbers.count)
    var sum2 = Double (sum)
    return sum2/len
}
avgOf ()
avgOf (12, 15, 31)
avgOf (12, 1)

func returnFifteen () -> Int {
    var y = 10
    func add () {
        y = y + 5
    }
    add ()
    return y
}
returnFifteen()

func makeIncrement() -> (Int -> Int) {
    func addOne (x: Int) -> Int {
        return x + 1
    }
    return addOne
}
let x = makeIncrement()
x(12)

func hasAnyMatches (list: [Int], condition: (Int -> Bool) ) -> Bool {
    for item in list {
        if condition (item) {
            return true
        }
    }
    return false
}
func lessThanTen (number:Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

numbers.map( {
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
numbers.map( {
    (x:Int) -> Int in
    var result = 0
    if x % 2 == 0 {
        result = x
    }
    return result
} )
numbers.map( {
    number in
    3 * number
} )

let sortedNumbers = sorted(numbers) { $0 > $1 }
sortedNumbers

class Shape {
    var numberOfSides = 0
    func simpleDescription () -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NameShape {
    var numberOfSides : Int = 0
    var name:String
    init (name:String) {
        self.name = name
    }
    deinit {
        println ("this would be call before destroy the class instance")
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides)"
    }
}

class Square: NameShape {
    var sideLength: Double
    init (sideLength:Double, name:String) {
        self.sideLength = sideLength
        super.init (name:name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class EquilateralTriangle: NameShape {
    var sideLength: Double = 0.0
    init (sideLength:Double, name:String) {
        self.sideLength = sideLength
        super.init (name:name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle (sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.perimeter = 9.9
triangle.sideLength

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init (size:Double, name:String) {
        square = Square (sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size:10, name:"another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
triangleAndSquare.triangle.sideLength


// willSet  before set
// didSet   after set

class Counter {
    var count : Int = 0
    func increment (amount:Int, numberOfTimes times:Int) {
        count += amount * times
    }
}
var counter = Counter()
counter.increment(2, numberOfTimes: 7)

var optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
// optionalSquare = nil
let sideLength = optionalSquare?.sideLength

enum Rank:Int {
    case Ace=1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription () -> String {
        switch self {
        case .Ace :
            return "ace"
        case .Jack :
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String (self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue
ace.simpleDescription()
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription () -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription () -> String {
        return "The \(rank.simpleDescription()) or \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card (rank: Rank.Three, suit: Suit.Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

enum ServerResponse {
    case Result(String, String)
    case Error(String)
}
let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese")
switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
case let .Error(error):
    let serverResponse = "Failure... \(error)"
}


protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}
class SimpleClass: ExampleProtocol {
    var simpleDescription:String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust () {
        simpleDescription += " Now 100% adjusted"
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust () {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

// mutating in the struct means the method can change the stuct value

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
7.simpleDescription

let protocolValue: ExampleProtocol = a
protocolValue.simpleDescription
// protocolValue.anotherProperty      // could not access this property


func repeat<Item>(item: Item, times:Int) -> [Item] {
    var result = [Item]()
    for i in 0..<times {
        result.append (item)
    }
    return result
}
repeat("knock", 4)

enum OptionalValue<T> {
    case None
    case Some(T)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

func anyCommonElement <T, U where T:SequenceType, U:SequenceType, T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs:T, rhs:U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElement([1,2,3], [3])



















