/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection: [Any] = [12.5, 10.3, 10, "Bob", "jeffery", 10023423445, true, true, false]
print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for eachInteger in collection {
    if let myInt = eachInteger as? Int {
        print("The integer has a value of \(myInt)")
    }
    if let myDouble = eachInteger as? Double {
        print("The double has a value of \(myDouble)")
    }
    if let myString = eachInteger as? String {
        print("The strings say \(myString)")
    }
    if let myBool = eachInteger as? Bool {
        print("The answer is \(myBool)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary: [String: Any] = ["Bob": 245, "me": 12.3, "Him": true, "They": false]
for pairs in dictionary {
    if let isInt = pairs.value as? Int {
        print("pairs: \(pairs.key), \(isInt)")
    }
    if let isDouble = pairs.value as? Double {
        print("pairs: \(pairs.key), \(isDouble)")
    }
    if let isStrings = pairs.value as? String {
        print("pairs: \(pairs.key), \(isStrings)")
    }
    if let isBool = pairs.value as? Bool {
        print("pairs: \(pairs.key), \(isBool)")
    }
//    if dictionary is [String: Int] {
//        print(pairs)
//    } else if dictionary is [String: String] {
//        print(pairs)
//    } else if dictionary is [String: Double] {
//        print(pairs)
//    } else if dictionary is [String: Bool] {
//        print(pairs)
//    }
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total1: Double = 0
for total in dictionary {
    if let isInt = total.value as? Int {
        total1 += Double(isInt)
    }
    if let isDouble = total.value as? Double {
        total1 += isDouble
    }
    if let _ = total.value as? String {
        total1 += 1
    }
    if let isBool = total.value as? Bool {
        if isBool {
            total1 += 2
        } else {
            total1 -= 3
        }
    }
}
print(total1)


//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for total in dictionary {
    if let isInt = total.value as? Int {
        total2 += Double(isInt)
    }
    if let isDouble = total.value as? Double {
        total2 += isDouble
    }
    if let isString = total.value as? String, let asDouble = Double(isString) {
        total2 += asDouble
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
