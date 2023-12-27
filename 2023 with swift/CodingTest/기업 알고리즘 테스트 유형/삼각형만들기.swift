//
//  삼각형만들기.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation
func 삼각형만들기() {
    let n = Int(readLine()!)!
    var 변: [Int] = []
    
    for _ in 1...n {
        변.append(Int(readLine()!)!)
    }
    
    let sorted = Array(변.sorted().reversed())
    var result = -1
    for s in 0..<sorted.count {
        if s + 3 > sorted.count {
            break
        }
        if sorted[s] < sorted[s + 1] + sorted[s + 2] {
            result = sorted[s] + sorted[s + 1] + sorted[s + 2]
            break
        }
    }
    
    print(result)
}
