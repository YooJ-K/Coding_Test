//
//  대표값.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func 대표값() {
    var num: [Int] = []
    
    for _ in 0..<10 {
        num.append(Int(readLine()!)!)
    }
    
    var dict: [Int: Int] = [:]
    var average = 0
    
    for n in num {
        if dict[n] != nil {
            dict[n]! += 1
        }
        else {
            dict[n] = 1
        }
        average += n
    }
    print(average / 10)
    print(dict.sorted { a, b in
        a.value > b.value
    }[0].key)
}
