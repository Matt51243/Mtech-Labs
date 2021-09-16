/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct computer {
    var ram: Int?
    var yearManufactured: Int?
    
    init?(ram: Int, yearManufactured: Int) {
        if ram > 0 && yearManufactured > 1970 && yearManufactured < 2020 {
            self.ram = ram
            self.yearManufactured = yearManufactured
//            print("Heres your computer")
        } else {
            return nil
        }
    }
}



//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.

let computer1 = computer.init(ram: 12345, yearManufactured: 1971)
let computer2 = computer.init(ram: 0, yearManufactured: 100)

if let ram1 = computer1?.ram {
    print(ram1)
}
if let yearManufactured1 = computer1?.yearManufactured {
    print(yearManufactured1)
}
 
if let ram2 = computer2?.ram {
    print(ram2)
}
if let yearManufactured2 = computer2?.yearManufactured {
    print(yearManufactured2)
}
/*:
 [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
