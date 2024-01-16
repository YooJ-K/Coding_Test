//
//  11047.swift
//  CodingTest
//
//  Created by 김유진 on 1/5/24.
//

import Foundation
func p11047() {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    var coins = Array(repeating: 0, count: input[0])
    for i in 0..<input[0] {
        coins[i] = Int(readLine()!)!
    }
    coins.reverse()
    
    var result = 0
    for c in coins {
        if c <= input[1] {
            while input[1] - c >= 0 {
                input[1] -= c
                result += 1
            }
        }
    }
    
    print(result)
}
