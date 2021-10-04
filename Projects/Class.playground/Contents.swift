import UIKit

class Human {
    var legs: Int
    var arms: Int
    var age: Int
    
    init(legs: Int, arms: Int, age: Int) {
        self.legs = legs
        self.arms = arms
        self.age = age
    }
}

var human1 = Human(legs: 20, arms: 10, age: 0)
var human2 = human1
print("Human1 \(human1.legs), \(human1.arms), \(human1.age)")
print("Human2 \(human2.legs), \(human2.arms), \(human2.age)")
human1.legs = 100
print("Human1 \(human1.legs), \(human1.arms), \(human1.age)")
print("Human2 \(human2.legs), \(human2.arms), \(human2.age)")


