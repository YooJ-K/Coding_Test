//
//  덱.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func 덱() {
    let n = Int(readLine()!)!
    
    var deque: [Int] = []
    
    for _ in 1...n {
        let order = readLine()!.split(separator: " ")
        
        switch(order[0]) {
        case "push_front":
            deque.insert(Int(order[1])!, at: 0)
        case "push_back":
            deque.append(Int(order[1])!)
        case "pop_front":
            if deque.isEmpty {
                print("-1")
            }
            else {
                print(deque.removeFirst())
            }
        case "pop_back":
            print(deque.popLast() ?? "-1")
        case "size":
            print(deque.count)
        case "empty":
            print(deque.isEmpty ? "1" : "0")
        case "front":
            if deque.isEmpty {
                print("-1")
            }
            else {
                print(deque[0])
            }
        case "back":
            if deque.isEmpty {
                print("-1")
            }
            else {
                print(deque[deque.count - 1])
            }
        default:
            print("default!")
        }
    }
}
