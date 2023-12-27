//
//  2839.swift
//  CodingTest
//
//  Created by 김유진 on 12/15/23.
//

import Foundation

func p2839() {
    let n = Int(readLine()!)!
    let infinite = 10000
    
    var result = Array(repeating: infinite, count: n + 1)
    
    if n >= 3 {
        result[3] = 1
    }
    
    if n >= 5 {
        result[5] = 1
    }
    
    if n >= 6 {
        for idx in 6...n {
            result[idx] = min(result[idx - 3], result[idx - 5]) + 1
        }
    }
    
    if result[n] >= infinite {
        print("-1")
    }
    else {
        print(result[n])
    }
    
}
