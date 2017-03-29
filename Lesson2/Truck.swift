//
//  Track.swift
//  Lesson2
//
//  Created by nikita on 26.03.17.
//  Copyright © 2017 nikita. All rights reserved.
//
//наследование
import Foundation

class Truck: Car
{
    var maxWeight: Float
    
    init(maxWeight: Float, maxSpeeda : Float, horsePowera: Float, weighta: Float, colora: String, branda: String)//конструктор в него надо копировать все объекты инициализированные в классе Car 
    {
        self.maxWeight = maxWeight //сначала свойства своего класса - а super(родительский) идет после
        super.init(maxSpeeda : maxSpeeda, horsePowera: horsePowera, weighta: weighta, colora: colora, branda: branda) // инициализируем свойства из класса Car  добавляем значения в фунцию init  класса Car типа maxSpeedCar: maxSpeed
    
    }
}
