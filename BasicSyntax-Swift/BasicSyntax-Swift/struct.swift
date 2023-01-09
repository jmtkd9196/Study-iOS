//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/09.
//

import Foundation

// struct / 구조체
struct YoutubeStruct {
    var name: String
    var subscribersCount: Int
}

var travelK = YoutubeStruct(name: "K-Tube", subscribersCount: 100)

// strcut(구조체)는 값(value)을 복사 -> value type이기 때subscribersCount문에 cloneK의 값은 travelK의 값과 다르게 저장되고 관리된다.(아예 다른 위치의 메모리를 사용)

var cloneK = travelK

print("[Before] cloneK.name : \(cloneK.name)")
cloneK.name = "K+Tube"
print("[After] cloneK.name: \(cloneK.name)")
print("travelK.name : \(travelK.name)")
