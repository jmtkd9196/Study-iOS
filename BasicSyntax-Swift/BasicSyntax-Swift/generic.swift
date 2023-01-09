//
//  main.swift
//  BasicSyntax-Swift
//
//  Created by Kyungsoo Lee on 2023/01/09.
//

// generic : c++의 template 같은 기능.
// 변수의 자료형이 정해지지 않았지만, 추후에 지정하여 사용 가능
// 즉, 어떠한 자료형이든 넣을 수 있다.
struct MyArray<T> {
    
    // generic을 담은 배열
    var elements: [T] = []
    
    // 생성자
    init(_ elements: [T]) {
        self.elements = elements
    }
}

struct Friend {
    var name: String
}

struct KTube {
    var name: String
}

// generic을 사용한 클래스를 통해 객체를 생성할 때 어떤 자료형이 와도 객체를 생성할 수 있다. (= c++의 template)
var myIntArray = MyArray([1, 2, 3])
print("myIntArray : \(myIntArray)")

var myStringArray = MyArray(["A", "B", "C"])
print("myStringArray : \(myStringArray)")

let friend_01 = Friend(name: "Arnold")
let friend_02 = Friend(name: "Gerrard")
let friend_03 = Friend(name: "Van Dijk")

var myFriendsArray = MyArray([friend_01, friend_02, friend_03])
print("myFriendsArray : \(myFriendsArray)")
