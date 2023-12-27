//
//  2293.swift
//  CodingTest
//
//  Created by 김유진 on 12/15/23.
//

import Foundation

func p2293() {
    
    let input = readLine()!.split(separator: " ")
    
    let n = Int(input[0])!
    let k = Int(input[1])!
    var coin = Array(repeating: 0, count: n + 1)
    
    for i in 1...n {
        coin[i] = Int(readLine()!)!
    }
    
    var dp = Array(repeating: Array(repeating: 1, count: k + 1), count: n + 1)
    
    for i in 1...n {
        for j in 1...k {
            if j == 1 || i == 1 {
                dp[i][j] = 1
            }
            else {
                dp[i][j] = dp[i - 1][j]
                if j - coin[i] >= 0 {
                    dp[i][j] += dp[i][j - coin[i]]
                }
            }
        }
    }
//    print(dp)
    print(dp[n][k])
}

//p2293()
