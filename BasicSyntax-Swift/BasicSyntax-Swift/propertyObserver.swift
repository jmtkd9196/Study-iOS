//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/09.
//

import Foundation

//property observer
var myAge = 10 {
    // willSet : 설정 되기 전의 값을 보여준다.
    // didSet : 설정된 값을 보여준다.
    willSet {
        print("값이 설정될 예정이다. / myAge : \(myAge)")
    } didSet {
        print("값이 설정되었다. / myAge : \(myAge)")
    }
}

myAge = 20
myAge = 30
