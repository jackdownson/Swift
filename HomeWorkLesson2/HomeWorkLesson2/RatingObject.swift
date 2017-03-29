//
//  RatingObject.swift
//  HomeWorkLesson2
//
//  Created by nikita on 26.03.17.
//  Copyright © 2017 nikita. All rights reserved.
//

import Foundation
class RatingObject
{
    var math : Float
    var physics: Float
    var english: Float
    var management: Float

    init(math:Float, physics: Float, english: Float, management: Float)
    {
        self.math = math
        self.english = english
        self.physics = physics
        self.management = management
    
    }
}

