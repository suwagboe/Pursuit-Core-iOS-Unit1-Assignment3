//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

// based on value user enter you will get back a closure
func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
  switch opString {
  case "+":
    return {x, y in x + y }
  case "-":
    return {x, y in x - y }
  case "*":
    return {x, y in x * y }
  case "/":
    return {x, y in x / y }
  default:
    return {x, y in x + y }
  }
}

let closureOperation = mathStuffFactory(opString: "+")

let result = closureOperation(45, 5) // the answer is in the result

// global variables
var map = ""
//var inputArray: Int

//print("result of operation is \(result)")

// ASK CLIENT WHETHER THEY WANT TO PLAY HIGH ORDER FUNCTION OR IF THEY WANT TO DO REGUALR CALCULATOR

//var firstChoice = ""
//var holderOfFirstChoice = ""
//var isItTrue = false
//repeat {
print("Hi.. Do you wanna work with the regular calculator(a) or do you wanna do the high order function(b)?")
var firstChoice = readLine ()?.lowercased() ?? "a"

switch firstChoice{
//switch firstChoice{
//var holderOfFirstChoice = firstChoice
//    if holderOfFirstChoice !=

//switch firstChoice {
//case "regular":
//++++++++++++++++++++++Part 1a: Command Line Math Stuff++++++++++++++++++++++++++
// Incorporate `operations` into a command line application. Parse input from the user into operator, and two operands, run the operation and return the answer. Reject non-conforming ops with a message.
// operator is : + - * /
// operands are: the numbers it is applied to
/*
 step 1: create a commmand line for user input
        - create a variable that holds the user input
 step 2: create a variable that holds user input and operation so that way the input can be held as a variable inside of the code
 step 3: create a thingy  that stops the user from using non conforming ops.. operations such as: ???
            - what are some non conforming ops
 step 4: print the answer?
 */

// ACTUAL START OF REGULAR CALCULATOR
 case "a":
print("Welcome to the most decent calcualtor in the world... We will TRY our very best to give you an answer.. whether it's correct... Well I wouldn't know but lets get started anyway...")
print()
print()
print("Below please input the equation you would like evaluated e.x: 0 + 9 ")
print()
/*
 what do we want:
    - user to input two integers and a symbol
    -regardless of how it is inputed the computer will be able to evalute: 0 9 + and computer will read it as 0 + 9
    - want the computer to evalute it from there
    - want computer to print it out.
 */
// point of the project is to learn how to use the func

// need to guard against the user inputing the equation as one line
// need to guard against letter inputs

let userInput = readLine() ?? "5 + 5"
print()
//print(userInput.components(separatedBy: " "))
var thisIsCrazy = true
//
//func checkingForTheWrongThings (_ string: String)-> Bool{
//    if userInput.count != 3  {
//        _ = false
//        print("Please input a proper equation that only contains numbers and a symbol no letters please.")
//    }
//}
func userEquation(input:String /*, letterAndSpaces: Bool*/) -> Double {
                    // this converts user input from a string into a bool
                   let userEquationAsArray = input.components(separatedBy: " ")
                let mathFunction = mathStuffFactory(opString: userEquationAsArray[1]) // A

                    let numOne = Double(userEquationAsArray[0]) ?? 0.0
                    
                    let numTwo = Double(userEquationAsArray[2]) ?? 0.0
                    
                    let calcu = mathFunction(numOne,numTwo) // B
                    return calcu
}
                print(userEquation(input: userInput))

//default:
//let calcu = mathFunction(10,5)
//print("your calculation is \(calcu)")
//user has to input

//++++++++++++++++++++++Part 1b: Random Math Stuff++++++++++++++++++++++++++
print("Now lets check out your mental math skills...")

//let userRandomEquation = readLine ?? ""

let ranNumOne = Int.random(in: 1...10)
let ranNumTwo = Int.random(in: 1...5)
var operationOne = ["+", "-", "*", "/"]

let choosenOp = operationOne.randomElement()

//var sum = ranNumTwo + choosenOp + ranNumOne

let computerOperation = mathStuffFactory(opString: choosenOp ?? "+")

let sum = computerOperation(Double(ranNumOne),Double(ranNumTwo)) // B

print("The computer did an operation on \(ranNumOne) and \(ranNumTwo) and it resulted in \(sum)")

print()

print("Now that you see the result can you please input what you think the operation is.. ")

let userGuessOperation = readLine() ?? "+"

if userGuessOperation == choosenOp {
    print("This is the correct operation you are a genius")
}else{
    print("You are wrong it is actually \(String(describing: choosenOp))")
}


// ACTUAL START OF HIGH ORDER FUNCTION:
// create if statment that allows for the user choose which function they should you .. a = filter , b = map, c = reduce
case "b":
print("Please choose which high order function you would like to use. please choose (A) for filter , (b) for map, (c) for reduce ")

var highOrderFuncChoice = readLine() ?? ""
    
switch highOrderFuncChoice{
    case "a" :
//++++++++++++++++++Part 2a: Implement your own filter function++++++++++++++++++++
print("Please input four DIFFERENT numbers please e.x: 1,3,5,6 by > 5")

    
    
//let arrOne = readLine() ?? "1,3,5,6 by > 5"

//func filterOne(inputArray: [Double], filter: (Double) -> Bool) -> [Double] {
    // order by less than or greater than
//var newArray = [Double]()
//for num in inputArray{
//    if num == ([1...100]) {
//
//    //??
//        newArray.append(num)
//
//    }
//    return newArray
//    }
//
//    }
    
    
// filter 1,2,3,4,5,6,7,8,9 by < 6 -> ["filter", "1,2,3,4" , "by", "<" , "6"]

//Ex: var arrary
//func filterFunc(arr: [Double], )
    
    
    case "b" :
 //++++++++++++++++++Part 2b: Implement your own map function++++++++++++++++++++
print("Please input four DIFFERENT numbers please e . x: map, 1,2,3,4 by (* or /) 2")
var inputArray: Double
//let mapOne = readLine() ?? "1,3,5,6"
 
    
let arrMaps = readLine() ?? "1,3,5,6 by * 5"

var newArray: Double = 0
let separatedArray = arrMaps.components(separatedBy: " ")
// the whole array
print(separatedArray)
    var functionOperator = separatedArray[2]
var numInArr = separatedArray[1].components(separatedBy: ",")
var numbersInArr = numInArr.map{Double($0) ?? 0}
var operatingBy = Double(separatedArray[3]) ?? 1.1
    var mapsNewArray = separatedArray[0]


func mapFunction(inputArray: [Double], map: (Double) -> Double) -> [Double] {
    // function is taking in a value and returning a value
var newArray = [Double]()
    for num in inputArray {
        newArray.append(map(num))
        // this declares what the function will do
        // this says that the new array will hold whatever the map says to do.
        print(newArray)
      }
      return newArray
    }
    
switch functionOperator{
    case "*" :
        print(mapFunction(inputArray: numbersInArr, map: {$0 * operatingBy}))
    case "/":
        map = "/"
default:
    print("plesse try again")
        }
    
// to declare variables outside of the function taking it from living locally to globally
    // whenever I use $0 that means its a closure and closures need {}
//let arraySorted = separatedArray.components(separatedBy: ",")
    
    // only multiply or divides MAP
    
    //
    
    
    

    case "c" :
//++++++++++++++++++Part 2c: Implement your own reduce function++++++++++++++++++++
// adding or multipling
        
print("Please input four DIFFERENT numbers please e . x: 1,3,5,6 ")

let reduceOne = readLine() ?? "1,3,5,6"

func filterThree(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    return [0,0]
        }
default:
   highOrderFuncChoice = "a"
    }
    default:
firstChoice = "a"
}// end of main switch statement
//default:
//    "please input a value"
//}
//default :
//print("please enter in either (regular) or (high)")
//} //end first switch statment

// holderOfFirstChoice.contains("regular") || holderOfFirstChoice.contains("high")


// end of high order or calc switch statement
