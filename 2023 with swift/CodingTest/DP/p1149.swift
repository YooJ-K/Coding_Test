//
//  p1149().swift
//  CodingTest
//
//  Created by 김유진 on 12/29/23.
//

import Foundation

func p1149() {
    let n = Int(readLine()!)!
    
    var costs = Array(repeating: Array(repeating: 0, count: 3), count: n)
    
    for i in 0..<n {
        let line = readLine()!.split(separator: " ").map { Int($0)! }
        for (idx, input) in line.enumerated() {
            costs[i][idx] = input
        }
    }
    
    var dp = Array(repeating: Array(repeating: 0, count: 3), count: n)
    for i in 0..<n {
        if i == 0 {
            for idx in 0..<3 {
                dp[i][idx] = costs[i][idx]
            }
            continue
        }
        
        dp[i][0] = min(dp[i - 1][1], dp[i - 1][2]) + costs[i][0]
        dp[i][1] = min(dp[i - 1][0], dp[i - 1][2]) + costs[i][1]
        dp[i][2] = min(dp[i - 1][1], dp[i - 1][0]) + costs[i][2]
    }
    
    print(dp[n - 1].min()!)
}
