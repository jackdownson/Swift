//
//  main.swift
//  helloxcode
//
//  Created by Andrey on 19.03.17.
//  Copyright © 2017 DyatkovAndrey. All rights reserved.
//
//
import Foundation

/*var number = 10
var numberTwo = 20.4

var result = (Double)(number) + numberTwo
var numberInt2 = (Int)(0.9)

print("result = \(result)")

func add(_ numberOne: Int,_ numberTwo: Int) -> Int
{

    let result = numberOne + numberTwo

    return result;

}
var resultAdd = add(10, 20)
 */


№1
var a1, b1, c1 : Int
a1 = 10
b1 = 20
c1 = a1 + b1
print (c1);


№2
var a2, b2, c2: Float;

a2 = 10.0;
b2 = 20.0;
c2 = a2 - b2;
print (c2);

№3
var a3, b3: Double
a3 = 1
b3 = 2.9878
a3 = b3

№4
let a4:  Int
a4 = 16
var b4: Int
b4 = 14
b4 = b4 + a4

№5
var a5: Int
var b5: Float
b5 = 12
a5 = 1
a5 = (Int)(b5) + a5

#6
var a6, b6, c6: Int
a6 = 12
b6 = 1
c6 = a6 % b6
print("result 6 = \(c6)")

№7
var a7, b7, c7 : String
a7 = "Hello "

c7 = "World"
print(a7 + c7);


var t : Bool = 1 > 5


func proc(strOne : String, strTwo: String)
{
    let resultString = strOne + strTwo;
    print(resultString)
}
func add(strOne: String, strTwo: String)-> String
{
    return strOne + strTwo

}

proc(strOne: "Hi", strTwo: "Bro")
let result = add(strOne: "Hi", strTwo: "Bro")
print(result)

if 10 > 5
{
    print("True")
    if true
    {
        print("True2")
    }
}

if 1 > 2
{
    print ("True")
}
else
{
    print("False")
}

if "Go" == "Go"
{
    print("Go")
}
else if "run" != "run"
{
    print("run")
}
else
{
    print("ok")
}


func fun1()
{

}

func fun2()
{
    fun1()
}

fun2()

var arrayInt = [Int]() // empty array
arrayInt = [1,2,3,4,5,6,-7] //INT ARRAY
var arrayDouble:[Double] = [1,2,3,4,5,6,-7] //INT ARRAY

arrayInt.append(12)
arrayInt = arrayInt + [9, 12, -90]

let countElementInArray = arrayInt.count

let isEmpty = arrayInt.isEmpty // проверка на пустой массив return True False

arrayInt.insert(45, at: 1) // вставляем в конкретное место





var array:[Int] =  [0, 10, -90, 13, 56]
var max: Int = array[0]
var min:Int = array[0]
var arrayEven = [Int]()
var arrayOdd = [Int]()
for i in array
{
    if max < i
    {
        max = i
    }
    if min > i
    {
        min = i
    }
    
}
print (max, min)
for i in array{
    if i % 2 == 0
    {
        arrayEven.append(i)
        
    }
    else {
        arrayOdd.append(i)
    }
}
print (arrayEven, arrayOdd )

var array3 = [Int]()
for i in 0..<array.count // не выходим из массива благодаря ..<
{
    if i % 3 == 0
    {
        array3.append(array[i])
        
    }
}
print("array3: \(array3)")


//[0, 10, -90, 13, 56]

for i in 0..<array.count
{
    //    print("\(i): \(array[i])")
    if  i < array.count - 1
    {
        break
    }
    if array[i] % 10 == 0
    {
        array.remove(at: i)
    }
}
print(array)



// bubble sort

var arraySort = [123, 4123, -54, 793, -12 , 21234, 10000000]

for index in 0..<arraySort.count
{
    
    if index == array.count - 1
    {
        break
    }
    if array[index] > array[index + 1]
    {
        var number = array[index]
        array[index + 1] = array[index]
        array[index + 1] = array[index]
        array[index] = number
        
    }
    
}




// massive string
var arrayStringOne = ["Lol", "Ok", "Go", ";)", "123", "34", "run", "fake", "park"]
var arrayStringTwo = ["Igor", "masha", "Go", "fake", "42", "223", "Vania", "fake"]
var arrayTotal = [String]()

for elementOne in arrayStringOne
{
    for elementTwo in arrayStringTwo
    {
        if elementOne == elementTwo
        {
            arrayTotal.append(elementTwo)
            
        }
    }
}
