//
//  p10844.swift
//  CodingTest
//
//  Created by 김유진 on 1/3/24.
//

import Foundation

func p10844() {
    // 쉬운 계단. 끝나는 숫자를 기준으로
    let n = Int(readLine()!)!
    
    var dp = Array(repeating: Array(repeating: 0, count: 10), count: n + 1)
    
    for idx in 1...n {
        for end in 0..<10 {
            if idx == 1 {
                if end == 0 {
                    dp[idx][end] = 0
                }
                else {
                    dp[idx][end] = 1
                }
            }
            
            else {
                if end - 1 < 0 {
                    dp[idx][end] = dp[idx - 1][end + 1]
                }
                else if end + 1 >= 10 {
                    dp[idx][end] = dp[idx - 1][end - 1]
                }
                else {
                    dp[idx][end] = dp[idx - 1][end - 1] + dp[idx - 1][end + 1]
                }
                
                dp[idx][end] = dp[idx][end] % 1000000000
            }
        }
    }
    
    print(dp[n].reduce(0, +) % 1000000000)
    
}
