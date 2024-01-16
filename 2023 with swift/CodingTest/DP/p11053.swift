//
//  p11053.swift
//  CodingTest
//
//  Created by 김유진 on 1/17/24.
//

import Foundation

func p11053() {
    let n = Int(readLine()!)!
    
    let arr: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
    var dp = Array(repeating: 1, count: n)
    
    for idx in 0..<n {
        for j in 0..<idx {
            if arr[j] < arr[idx] && dp[j] >= dp[idx] {
                dp[idx] = dp[j] + 1
            }
        }
    }
    
    print(dp.max()!)
}
