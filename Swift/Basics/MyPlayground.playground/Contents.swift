
import UIKit

var str = "Hello, playground"
let count = 10
var price = 11.11

let f = "Nikhil"
let l = "Ramesh"

var complete = f+" "+l
print(complete)


//count = 5 //not possible because, the count is used using let

// hold an option and select a var to know the type intference

//Strings

var a1 = "Hi "
var a2 = "learning swift!"
var a3 = a1 + a2
a3.uppercased() // Upper case
a3.lowercased() //Lower Case
a3.count //number of characters in string


var bookPrice = 39
var numOfCopies = 5
var totalPrice = bookPrice * numOfCopies
//NOT POSSIBLE BECAUSE totalPrice is in integer
//var totalPriceMessage = "The price of the book is $" + totalPrice
var totalPriceMessage = "The price of the book is $" + String(totalPrice)
var totalPriceMessage1 = "The price of the book is $ \(totalPrice)"

//CONTROL FLOW BASICS

var b1 = 6
if b1 == 6{
    print("You woke up at 6")
}
else{
    print("You didn't")
}

//Switch

switch b1{
case 6:
    print("Yep")
default:
    print("nope")
}

var bonus = 10000

if bonus >= 10000{
    print("I will travel to Paris and London")
}
else if (bonus >= 5000 && bonus <= 10000)
{
    print("yo")
}
 else if bonus >= 1000 && bonus < 5000 {
    print("I will travel to Bangkok")
} else {
    print("Just stay home")
}



switch bonus {
case 10000...:
    print("I will travel to Paris and London!")
case 5000...9999:
    print("I will travel to Tokyo")
case 1000...4999:
    print("I will travel to Bangkok")
default:
    print("Just stay home")
}


//Understanding Arrays and Dictionaries
var bookCollection = ["Tool of Titans", "Rework", "Your Move"]
bookCollection[1]

for i in 0...2{
    print(bookCollection[i])
}

for i in 0...bookCollection.count - 1{
    print(bookCollection[i])
}

for b in bookCollection{
    print(b)
}

//Dictionary
var bookCollectionDict = ["1328683788": "Tool of Titans", "0307463745": "Rework", "1612060919": "Authority"]
bookCollectionDict["0307463745"]

for (key,value) in bookCollectionDict{
    print("ISBN: \(key)")
    print("Title: \(value)")
}

var emojiDict =  ["👻":"Ghost","💩":"Poop","😠":"Angry","😱":"Scream"]// Fill in the code for initializing the dictionary //

var wordToLookup = "👻" // Fill in the Ghost emoji //
var meaning = emojiDict[wordToLookup]// Fill in the code for accessing the value //

wordToLookup = "😱"// Fill in the Angry emoji //
meaning = emojiDict[wordToLookup]// Fill in the code for accessing the value //
