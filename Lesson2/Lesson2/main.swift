//
//  main.swift
//  Lesson2
//
//  Created by nikita on 26.03.17.
//  Copyright © 2017 nikita. All rights reserved.
//

import Foundation

let bmw = Car(maxSpeeda: 290, horsePowera: 320, weighta: 2000, colora: "Red", branda: "BMW")
let mersedec = Car(maxSpeeda: 190, horsePowera: 210, weighta: 1800, colora: "Black", branda: "Mersedec")
let vaz: Car = Car(maxSpeeda: 210, horsePowera: 150, weighta: 1900, colora: "White", branda: "VAZ")
let opel = Car(maxSpeeda: 105, horsePowera: 90, weighta: 1200, colora: "Brown", branda: "Opel")
let lada = Car(maxSpeeda: 185, horsePowera: 130, weighta: 1400, colora: "Green", branda: "Lada")

var arrayCars: [Car] = [bmw, mersedec, vaz, opel, lada] // создаем массив со всеми этими объектами класса Car

let car = arrayCars[1] // запихиваем в car мерседес
let color = car.color // вызываем из объекта информацию

for car in arrayCars // загоняем в car индексы bmw mers vaz etc из строки 17
{
    print ("\(car.brand) имеет вес \(car.weight)")
    

}
//  поиск самой шустрой тачки
var maxSpeed = arrayCars[0].maxSpeed;
var findBrand = arrayCars[0].brand
for car in arrayCars
{
    if car.maxSpeed > maxSpeed
    {
        maxSpeed = car.maxSpeed
        findBrand = car.brand
    }
   
}
print (maxSpeed)
print (findBrand)


// макс лс но она должна весить меньше 1500


var arrayLowWeight = [Car]()

for car in arrayCars{ // ищем тачки меньше 1500
    if car.weight < 1500
    {
         arrayLowWeight.append(car)
    }
}


if let firstCar = arrayLowWeight.first // если ненулевой массив
{
    var horseSimple = firstCar.horsePower
    var brandFind = firstCar.brand
    for car in arrayLowWeight
    {
        if car.horsePower > horseSimple
        {
            horseSimple = car.horsePower
            brandFind = car.brand
        }
    }
    print ("Тачка  \(brandFind)")
}
else
{
    print("нет тачек")
}


//наследование - 


//создаем объекты bus и truck

print (mersedec.getPriceCar())

let busBig = Bus(maxPlacea: 30, maxSpeeda: 90, horsePowera: 100, weighta: 3000, colora: "White", branda: "VAZ")
let busSmall = Bus(maxPlacea: 10, maxSpeeda: 70, horsePowera: 105, weighta: 2000, colora: "Red", branda: "Opel")

let truckBMW = Truck(maxWeight: 5000, maxSpeeda: 100, horsePowera: 120, weighta: 1000, colora: "Black", branda: "BMW")
let truckMercedes = Truck(maxWeight: 10000, maxSpeeda: 20, horsePowera: 1000, weighta: 2900, colora: "White", branda: "Mercedes")

var allCarsArray: [Car] = [busBig, busSmall, truckBMW, truckMercedes, opel] // полиморфизм
var findcar = allCarsArray[0] //можно забить на все переменные и занести в findCar весь класс
for car in allCarsArray
{
    if findcar.getPriceCar() < car.getPriceCar()
    {
        findcar = car
        
    }
    
}



