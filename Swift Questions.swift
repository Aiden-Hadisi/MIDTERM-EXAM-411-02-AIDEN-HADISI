///
//  main.swift
//  midterm
//
//  Created by William McCarthy on 163//20.
//  Copyright © 2020 William McCarthy. All rights reserved.
//


//Midterm Exam : AIDEN HADISI

import Foundation

//================================================================================
// PREFACE to the TEST
//================================================================================

var highest_score = 100.0
var nQuestion = 1

func no_answer() {
  highest_score -= 2.5
  print("NO ANSWER -- highest possible now \(highest_score)%\n\n\n")
}

func separator() {  print("//=================================================================================");
}

func header(label: String) {
  separator();
  print("//\(label)");
  separator();
}

func question(_ n: inout Int, text: String) {
  separator();
  print("// Question \(n)\n//");
  print("// \(text)\n//")
  n += 1
  separator();
}


//================================================================================
// TEST BEGINS.............
//================================================================================


question(&nQuestion,        //  ------------------- QUESTION 1 -----------------
         text: "Write out the formula for reversing the String 'Call me Ishmael'.")
var ish = "Call me Ishmael"

// TODO .......................................
var reversed = String(ish.reversed());
print(reversed)
print("\n\n");



question(&nQuestion,        //  ------------------- QUESTION 2 -----------------
         text: "Print 'China' using its two unicode chars: unicode 4e2d and 570d")

// TODO .......................................
print("\u{4e2d}\u{570d}")
print("\n\n")




question(&nQuestion,        //  ------------------- QUESTION 3 -----------------4
         text: "Convert the following String to all uppercase: 'cal state fullerton'.")

// TODO .......................................
print("cal state fullerton".uppercased())
print("\n\n")



question(&nQuestion,        //  ------------------- QUESTION 4 -----------------
         text: "Change all of the vowels (a,e,i,o,u, and y) to be ‘Z’.")
let word = "sUpErcAlifragilisticexpialadotiOUs"

// TODO .......................................
var vowelsChangedWord = word.replacingOccurrences(of: "[aeiouy]", with: "Z", options: [.regularExpression, .caseInsensitive], range: nil)

print(vowelsChangedWord)
print("\n\n")






question(&nQuestion,        //  ------------------- QUESTION 5 -----------------
         text: "Determine if the following String has the prefix or suffix '__': __add__.")
var sadd = "__add__"
let pre = "__"
let hasPre = sadd.hasPrefix(pre);
let hasSuf = sadd.hasSuffix(pre);


// TODO .......................................
print("Prefix: \(hasPre ? "Yes" : "No") | Suffix: \(hasSuf ? "Yes" : "No")")
print("\n\n")




question(&nQuestion,        //  ------------------- QUESTION 6 -----------------
         text: "Create a switch statement that handles the following ranges of error codes:\n100 or 101: \"Informational, 1xx\"\n204: \"Successful but no content, 204\"\n300 to 307: \"Redirection: 3xx\"\n400 to 505: \"Server error\"\notherwise: \"Unknown error. Please retry\"")
func handleError(_ code: Int) {
  print("handling error code: \(code)... ===> ", terminator: " ")
  switch(code) {

// TODO .......................................
    
  case 100,101:
    print("Information, 1xx")
  case 204:
    print("Successful but no content, 204")
  case 300...307:
    print("Redirection: 3xx")
  case 400...505:
    print("server error")
  
  default:
    print("Unknown Error. Please retry.");
  }
}
print("\n")
handleError(101)
handleError(204)
handleError(303)
handleError(306)
handleError(500)
handleError(600)
print("\n\n")




question(&nQuestion,        //  ------------------- QUESTION 7 -----------------
         text: "Write a function that takes a variable number of integers, and returns a tuple containing (minimum: Int, maximum: Int).")
func minmax(_ numbers: Int...) -> (min: Int, max: Int) {

  // TODO .......................................
    var minValue = numbers[0]
    var maxValue = numbers[0]
    
    for value in numbers {
        minValue = value < minValue ? value : minValue
        maxValue = value > maxValue ? value : maxValue
    }
  return (minValue, maxValue)
}
print("(min, max) of 1,2,4,5,6,7,8 is: \(minmax(1,2,3,4,5,6,7,8))\n\n")




question(&nQuestion,        //   ------------------- QUESTION 8 -----------------
         text: "Write a function called siftBeans(fromGroceryList:) that takes a grocery list [String], and splits it into two lists, one with beans, and one without. Example: let result = siftBeans(fromGroceryList: [\'green beans\', 'milk', 'black beans', 'pinto beans',  'apples'])      result.beans == [\"green beans\", \"black beans\", \"pinto beans\"]    result.otherGroceries == [\"milk\", \"apples\"]    Hint:  use hasSuffix(_:).\n")
func siftBeans(_ fromGroceryList: [String]) -> (beans: [String], notbeans: [String]) {

    // TODO .......................................
    var isBeans = [String]()
    var isNotBeans = [String]()
    
    for value in fromGroceryList {
        if(value.hasSuffix("beans")) {
            isBeans.append(value)
        }
        else {
            isNotBeans.append(value)
        }
    }
  return (isBeans, isNotBeans)
}
print("\nrunning function siftBeans()...")
let result = siftBeans(["green beans", "milk", "black beans", "pinto beans", "apples"])
print("result.beans = \(result.beans)")
print("result.notbeans = \(result.notbeans)\n")
