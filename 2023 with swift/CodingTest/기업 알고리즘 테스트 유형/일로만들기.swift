//
//  일로만들기.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func 일로만들기() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: 0, count: n + 1)
    
    if n == 1 {
        print("0")
        return
    }
    for i in 2...n{
        dp[i] = dp[i - 1] + 1
        if i / 3 * 3 == i {
            dp[i] = min(dp[i], dp[i / 3] + 1)
        }
        if i / 2 * 2 == i {
            dp[i] = min(dp[i], dp[i / 2] + 1)
        }
    }
    print(dp[n])
}
