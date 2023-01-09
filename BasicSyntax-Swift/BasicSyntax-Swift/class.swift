//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/09.
//

import Foundation

// class
class YoutuberClass {
    var name: String
    var subscribersCount: Int
    
    // 클래스는 init()함수를 통해 메모리에 할당해야 사용 가능하다. -> 그래서 init()이 꼭 필요하다. (struct는 상관 X)
    // 생성자 - 메모리에 값을 할당한다.
    init(name: String, subscribersCount: Int) {
        // (멤버 변수에)self를 꼭 붙이자.
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var travelK = YoutuberClass(name: "YoutubeK", subscribersCount: 100)
var cloneK = travelK

// struct와는 다르게 reference type(참조 타입)이어서 변수를 복사하면 서로 같은 메모리를 공유한다.
// 따라서 복사한 객체의 멤버변수를 바꾸게되면 원본 객체의 멤버변수도 변하게 된다.(서로 같은 메모리를 공유하기 때문에)
print("[Before] travelK.name : \(travelK.name)")
cloneK.name = "YoutubeK+"
print("[After] travelK.name : \(travelK.name)")


