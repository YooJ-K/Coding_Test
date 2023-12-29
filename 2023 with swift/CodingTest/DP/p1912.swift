//
//  p1912.swift
//  CodingTest
//
//  Created by 김유진 on 12/29/23.
//

import Foundation

// 구간 합 문제
func p1912() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dp = Array(repeating: 0, count: n)
    
    for idx in 0..<n {
        if idx == 0 {
            dp[idx] = arr[idx]
            continue
        }
        dp[idx] = max(dp[idx - 1] + arr[idx], arr[idx])
    }
    
    print(dp, dp.max()!)
}
