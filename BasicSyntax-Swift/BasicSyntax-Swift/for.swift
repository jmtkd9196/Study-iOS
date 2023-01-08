//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/08.
//

import Foundation

// 0 ~ 5의 range를 반복하는 for문
for index in 0...5 {
    print("index : \(index)")
}

// 0 ~ 4까지 하려면 0..<5로 하면 0, 1, 2, 3, 4까지 반복.
for i in 0..<5 {
    print("i : \(i)")
}

// where절을 사용하여 조건에 맞춰 반복시킬 수도 있다. (if문과 비슷함)
for index in 0...5 where index % 2 == 0 {
    print("index : \(index)")
}

//var randomIntArray: [Int] = [Int]()        아래와 동일.
var randomIntArray: [Int] = []


// i, index 등 변수명을 사용할 필요가 없을 때는 _를 사용하여 생략하기도 한다.
for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomIntArray.append(randomNumber)
}

print("randomIntArray : \(randomIntArray)")
