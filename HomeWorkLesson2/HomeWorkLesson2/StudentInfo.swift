//
//  StudentInfo.swift
//  HomeWorkLesson2
//
//  Created by nikita on 26.03.17.
//  Copyright © 2017 nikita. All rights reserved.
//

import Foundation

class StudentInfo : RatingObject
{
    var name: String
    var age: Int
    var course: Int
    var faculty: String
    
    init(math:Float, physics: Float, english: Float, management: Float, name: String, age: Int, course: Int, faculty: String)
    {
        self.name = name
        self.age = age
        self.course = course
        self.faculty = faculty
        super.init(math: math, physics: math, english: english, management: management)
    }
}
