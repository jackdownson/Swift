//
//  main.swift
//  HomeWorkLesson2
//
//  Created by nikita on 26.03.17.
//  Copyright © 2017 nikita. All rights reserved.
//

import Foundation

let Victor = StudentInfo(math: 5, physics: 5, english: 5, management: 5, name: "Victor", age: 23, course: 1, faculty: "lol")
let Pavel = StudentInfo(math: 5, physics: 5, english: 5, management: 5, name: "Pavel", age: 19, course: 1, faculty: "lol")
let Mohammed = StudentInfo(math: 5, physics: 5, english: 5, management: 5, name: "Mohammed", age: 22, course: 1, faculty: "lol")
let Shamil = StudentInfo(math: 5, physics: 5, english: 5, management: 5, name: "Shamil", age: 22, course: 1, faculty: "lol")
let Nikita = StudentInfo(math: 5, physics: 5, english: 5, management: 5, name: "Nikita", age: 22, course: 1, faculty: "lol")
let Anna = StudentInfo(math: 4, physics: 4, english: 4, management: 4, name: "Anna", age: 22, course: 1, faculty: "lul")
let Masha = StudentInfo(math: 2, physics: 3, english: 5, management: 5, name: "Masha", age: 20, course: 1, faculty: "lul")
let Kirill = StudentInfo(math: 3, physics: 3, english: 3, management: 3, name: "Kirill", age: 24, course: 1, faculty: "lul")
let Lisa = StudentInfo(math: 3, physics: 3, english: 4, management: 4, name: "Lisa", age: 23, course: 1, faculty: "lul")


var students = [Victor, Pavel, Mohammed, Shamil, Nikita, Anna, Kirill, Lisa]


// самый старый ученик
func theEldest(students: [StudentInfo])->Int
{
    var theOldest = students[0]
    for student in students
    {
        if student.age > theOldest.age
        {
            theOldest = student
            
        }
    }
    print ("\(theOldest.age) \(theOldest.name)")
    return (theOldest.age)
}


theEldest(students: students)


// самый молодой ученик
func theYoungest(students: [StudentInfo])->Int

{
    var theYoungest = students[0]
    for student in students
    {
        if student.age < theYoungest.age
        {
            theYoungest = student
            
        }
    }
    print ("\(theYoungest.age) \(theYoungest.name)")
    return (theYoungest.age)
}


theYoungest(students: students)


//фильтрация по возрасту
func ageSort(lowAge: Int, highAge: Int)->[StudentInfo]
{
    var newArray = [StudentInfo]()
    for student in students
    {
       if (student.age > lowAge) && (student.age < highAge)
       {
        newArray.append(student)
        }
    
    }
    
    print (newArray)
    return (newArray)
}

ageSort(lowAge: 19, highAge: 23)


//все студенты на курсе n
func theCourse(number: Int)->[StudentInfo]
{
    var arrayFaculty = [StudentInfo]()
    for student in students
    {
        if student.course == number
        {
            arrayFaculty.append(student)
        }
    }
    if let notEmpty = arrayFaculty.first
    {
        print (arrayFaculty)
        return arrayFaculty
    }
    else
    {
        print("на курсе \(number) студентов нет")
    }
    return (arrayFaculty)
}


theCourse(number: 1)



// сортировка по факультету
func theFaculty(faculty: String)
{
    var newArray = [StudentInfo]()
    for student in students
    {
        if student.faculty == faculty
        {
            newArray.append(student)
            
        }
        
    }
    
    if newArray.first != nil
    {
        print(newArray)
    }
    else
    {
        print("нет таких факультетов")
    }
    
}

theFaculty(faculty: "lul")



//лучший студент
func bestStudent(students: [StudentInfo])->String
{
    var currentBest: Float = students[0].math + students[0].physics + students[0].management + students[0].english
    var theBest = students[0]
    for student in students
    {
        var avgGrade: Float = (student.math + student.physics + student.management + student.english) / 4.0
        if currentBest < avgGrade
        {
            currentBest = avgGrade
            theBest = student
            avgGrade = 0
        
        }
        }
    print(theBest.name)
    return theBest.name

    }

bestStudent(students: students)

//худший студент
func worstStudent(students: [StudentInfo])->String
{
    var currentWorst: Float = students[0].math + students[0].physics + students[0].management + students[0].english
    var theWorst = students[0]
    
    for student in students
    {
        var avgGrade: Float = (student.math + student.physics + student.management + student.english) / 4.0
        if currentWorst > avgGrade
        {
            currentWorst = avgGrade
            theWorst = student
            avgGrade = 0
            
        }
        
    }
    print( theWorst.name)
    return theWorst.name
}


 worstStudent(students: students)



//ищем двоечника и если есть хоть одна двойка то ставим на отчисление
func graduateF(students: [StudentInfo])->[String]
{
    var studentsF = [StudentInfo]()
    var studentsFnames = [String]()
    for student in students
    {
        if (student.math <= 2) || (student.english <= 2) || (student.management <= 2) || (student.physics <= 2)
        {
            studentsF.append(student)
        }
    }
    for student in studentsF
    {
        studentsFnames.append(student.name)
    }
    return studentsFnames
}

graduateF(students: students)



//функция для отличников 
func graduateA(students: [StudentInfo])->[String]
{
    var studentA = [StudentInfo]()
    var studentAnames = [String]()
    for student in students
    {
        if (student.management == 5) && (student.english == 5) && (student.math == 5) && (student.physics == 5)
        {
            studentA.append(student)
        }
    
    for student in studentA
    {
        studentAnames.append(student.name)
        print ("\(student.name) gets additional benefits for perfect grades")
        }
        
    }
    return studentAnames
}

graduateA(students: students)


//средняя оценка

func gradMid(students: [StudentInfo])-> [Float]
{
    var arrayMid = [Float]()
    var studentMid: Float
    for student in students
    {
        studentMid = (student.math + student.english + student.management + student.physics) / 4.0
        arrayMid.append(studentMid)
        print ("Mid grade of \(student.name) is \(studentMid)")
        
    }
    return (arrayMid)
}

gradMid(students: students)



//средняя оценка матеша
func gradeAllMid(students: [StudentInfo])->Float
{
    var mathMid: Float = 0
    var i: Float = 0
    for student in students
    {
        mathMid = mathMid + student.math
        i += 1;
    }
    mathMid = mathMid / i
    return mathMid
}

gradeAllMid(students: students)


//средняя оценка англецкий
func gradeAllEng(students: [StudentInfo])->Float
{
    var engMid: Float = 0
    var i: Float = 0
    for student in students
    {
        engMid = engMid + student.english
        i += 1;
    }
    engMid = engMid / i
    return engMid
}

gradeAllEng(students: students)


//средняя оценка мана
func gradeAllMan(students: [StudentInfo])->Float
{
    var manMid: Float = 0
    var i: Float = 0
    for student in students
    {
        manMid = manMid + student.management
        i += 1;
    }
    manMid = manMid / i
    return manMid
}

gradeAllMan(students: students)


//средняя оценка физика
func gradeAllPhy(students: [StudentInfo])->Float
{
    var phyMid: Float = 0
    var i: Float = 0
    for student in students
    {
        phyMid = phyMid + student.physics
        i += 1;
    }
    phyMid = phyMid / i
    return phyMid
}

gradeAllPhy(students: students)








