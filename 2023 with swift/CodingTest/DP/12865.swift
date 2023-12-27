//
//  12865.swift
//  CodingTest
//
//  Created by 김유진 on 12/15/23.
//

import Foundation

struct Knapsack {
    var w: Int
    var v: Int
}

func p12865() {
    var input = readLine()!.split(separator: " ")
    
    let n = Int(input[0])!
    let k = Int(input[1])!
    
    var inputKnapsack = Array(repeating: Knapsack(w: 0, v: 0), count: n + 1)
    var dp = Array(repeating: Array(repeating: 0, count: k + 1), count: n + 1)
    
    for i in 1...n {
        input = readLine()!.split(separator: " ")
        
        inputKnapsack[i].w = Int(input[0])!
        inputKnapsack[i].v = Int(input[1])!
    }
    
    // algorithm
    for i in 1..<dp.count {
        for j in 1..<dp[i].count {
            if j >= inputKnapsack[i].w {
                dp[i][j] = inputKnapsack[i].v
            }
            
            if i != 1 {
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
                if j >= inputKnapsack[i].w {
                    dp[i][j] = max(dp[i][j], inputKnapsack[i].v)
                }
                
                if j - inputKnapsack[i].w > 0 {
                    dp[i][j] = max(dp[i][j], dp[i - 1][j - inputKnapsack[i].w] + inputKnapsack[i].v)
                }
            }
        }
    }
    print(dp[n][k])
}
