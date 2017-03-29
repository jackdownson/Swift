//
//  car.swift
//  Lesson2
//
//  Created by nikita on 26.03.17.
//  Copyright © 2017 nikita. All rights reserved.
//

import Foundation

class Car //s blo'shoii bukvi
{
    var maxSpeed: Float
    var horsePower: Float
    var weight: Float
    var color: String
    var brand: String
    
    var type: String = "Car" //не нужно инициализировать но можно менять
    private var price: Int? //если optional то не нужно инициализировать и она не наследуется и доступна только в car
    
    
    
    init(maxSpeeda : Float, horsePowera: Float, weighta: Float, colora: String, branda: String) //аргументы функции контсрукцииe
    //теперь свойство класса
    {
    
        maxSpeed = maxSpeeda
        horsePower = horsePowera
        weight = weighta
        color = colora
        brand = branda
        self.price = (Int)((maxSpeed * 1000 + horsePower * 20) / weight)
    }
    
    func getPriceCar()->Int
    {
        if price != nil{
            return price!
        }
        return 0
    }

}

