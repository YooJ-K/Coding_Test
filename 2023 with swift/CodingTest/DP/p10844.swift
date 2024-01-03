//
//  p10844.swift
//  CodingTest
//
//  Created by 김유진 on 1/3/24.
//

import Foundation

func p10844() {
    let n = Int(readLine()!)!
    
    var dp = Array(repeating: 0, count: n + 1)
    
    for idx in 1...n {
        if idx == 1 {
            dp[idx] = 9
        }
        else {
            dp[idx] = (dp[idx - 1] - idx) * 2 + idx + 1
            dp[idx] = dp[idx] - dp[idx] / 1000000000 * 1000000000
        }
    }
    
    print(dp[n])
}
