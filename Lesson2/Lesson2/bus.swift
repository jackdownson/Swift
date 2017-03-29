//
//  bus.swift
//  Lesson2
//
//  Created by nikita on 26.03.17.
//  Copyright © 2017 nikita. All rights reserved.
//

import Foundation

class Bus: Car
{
    var maxPlace: Int
    
    init(maxPlacea: Int, maxSpeeda : Float, horsePowera: Float, weighta: Float, colora: String, branda: String)
    {
        self.maxPlace = maxPlacea
        super.init(maxSpeeda : maxSpeeda , horsePowera: horsePowera, weighta: weighta, colora: colora, branda: branda)
    }
}
