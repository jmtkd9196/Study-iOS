//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/08.
//

import Foundation

var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// where를 통해 특정 조건을 걸어 반복시킬 수 있다.
for item in myArray where item > 5 {
    print("item: \(item)")
}

for item in myArray where item % 2 != 0 {
    print("홀수 \(item)")
}
