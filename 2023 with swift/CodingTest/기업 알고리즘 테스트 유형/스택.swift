//
//  스택.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func 스택(){
    let n = Int(readLine()!)!
    
    var stack: [Int] = []
    
    for _ in 1...n {
        let order = readLine()!.split(separator: " ")
        
        switch(order[0]) {
        case "push":
            stack.append(Int(order[1])!)
        case "pop":
            print(stack.popLast() ?? "-1")
        case "size":
            print(stack.count)
        case "empty":
            print(stack.isEmpty ? "1" : "0")
        case "top":
            if stack.count - 1 >= 0 {
                print(stack[stack.count - 1])
            }
            else {
                print("-1")
            }
        default:
            print("default!")
        }
    }
}
