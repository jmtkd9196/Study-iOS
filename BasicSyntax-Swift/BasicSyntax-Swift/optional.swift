//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/09.
//

import Foundation

// 옵셔널이란?
// 값이 있는지 없는지 모르는 상태
var someVariable: Int? = nil

if someVariable == nil {
    someVariable = 90
    print(someVariable)
}

//언래핑 되기 전에 optional 변수를 사용하면 Optional(값)로 출력 되는 것을 볼 수 있다.
print("someVariable : \(someVariable)")

// 언랩핑이란?
// 옵셔널인 상태를 벗겨내는 것.

// 언랩핑 방법 1. if let
// someVariable이 값이 있다면 otherVariable이라는 변수에 값을 넣어 사용하겠다.
if let otherVariable = someVariable {
    print("언래핑 된 변수 값 : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// 언랩핑 방법 2. optionalVariable ?? 값
// someVariable이 비어있으면, 즉, 값이 없으면 기본값으로 어떤 값을 넣겠다.
let myValue = someVariable ?? 10
print("myValue : \(myValue)")

// 언랩핑 방법 3. guard let
// 언랩핑하는 옵셔널 변수의 값이 있으면 다른 변수에 넣어서 사용하고, 그렇지 않으면 else로 분기되어 처리한다.
// 아래에서는 parameter에 값이 있으면 unWrappedParam에 값을 넣어서 사용한다.

var firstValue: Int? = 30
var secondValue: Int?

// 함수가 선언되기 전에 위에서 사용해도 상관없지만 웬만하면 함수 선언 후 아래 코드에서 사용하자.
unwrap(parameter: firstValue)

// func unwrap(_ parameter: Int?) 처럼 매개변수 앞에 _를 붙여 사용할 경우 함수 외부에서 함수를 호출할 때 매개변수 이름을 적지 않고 사용이 가능하다
// unwrap(firstValue)
func unwrap(parameter: Int?) {
    print("unwrap() called")
    //값이 없으면 리턴해버린다.
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam : \(unWrappedParam)")
}

unwrap(parameter: secondValue)
