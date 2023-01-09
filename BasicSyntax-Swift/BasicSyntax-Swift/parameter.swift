//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/09.
//

import Foundation

// parameter name
// 함수, 메소드 정의
func myFunction(name: String) -> String {
    return "안녕하세요?! \(name) 입니다."
}

// 함수 호출(function call)
print(myFunction(name: "이경수"))

// 아래와 같이 parameter의 external name을 설정하여 함수 호출 시 표시될 parameter name을 설정할 수 있다.
func myFunctionSecond(with name: String) -> String {
    return "안녕하세요?! \(name) 입니다."
}

print(myFunctionSecond(with: "SecondName"))

// external name을 "_"(언더바)로 설정하면 함수 호출 시 parameter name을 붙이지 않고 함수를 호출할 수 있다.
func myFunctionThird(_ name: String) -> String {
    return "안녕하세요?! \(name) 입니다."
}

print(myFunctionThird("ThirdName"))
