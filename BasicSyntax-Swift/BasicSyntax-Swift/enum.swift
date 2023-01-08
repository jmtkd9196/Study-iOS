//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/08.
//

import Foundation

// String type의 값이 enum으로 저장된다.
// case가 직접 String이 되서 저장된다.
enum School {
    case elementary
    case middle
    case high
    //case elementary, middle, high
}

var yourSchool = School.elementary
print("yourSchool: \(yourSchool)")

enum Grade: Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade)")
//raw Value를 사용하여 enum case가 가지고 있는 값 자체에 대해서도 접근이 가능하다.
print("yourGrade (num) : \(yourGrade.rawValue)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    // enum case 내부에서 func를 사용할 수 있기 때문에 아래의 방법을 통해 각 case들이 가지고 있는 String을 가져올 수 있다.
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "부평서중학교")
print("yourMiddleSchoolName : \(yourMiddleSchoolName)")
print("yourMiddleSchoolName (String) : \(yourMiddleSchoolName.getName())")
