//: Playground - noun: a place where people can play

import UIKit



// If - Else

let a: Int = 1

if (a == 2) {
    print("it is 2")
}
else if (a == 3) {
    print("it is 3")
}
else if (a >= 4) {
    print("higher than 3")
}
else {
    print("nothing important")
}


// Switch - Case

let b: Int = 3

switch (b) {
case 2:
    print("2")
    break
case 3:
    print("3")
    break
case 5:
    print("5")
    break
default:
    print("nothing important")

}

//  Arrays

var myArray: [String] = ["fred","mike","nate"]
var otherArray: [Int] = [1,2,3,4]

let firstValue = myArray[0]
let sec = otherArray[3]

myArray.count
myArray.append("john")
myArray.count

print(myArray[3])


//  Loops

var loopArray: [Int] = []

var i: Int = 0

repeat {
    print(i)
    i += 1
 } while (i < 100)



