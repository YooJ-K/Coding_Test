//
//  p2156.swift
//  CodingTest
//
//  Created by 김유진 on 1/3/24.
//

import Foundation

// 포도주를 먹는 문제
// 간과한 점?
// 연속해서 두번이상 안먹을때의 경우의 수

func p2156() {
    let n = Int(readLine()!)!
    
    var arr: [Int] = []
    var dp = Array(repeating: 0, count: n)
    
    for _ in 0..<n {
        arr.append(Int(readLine()!)!)
    }

    for i in 0..<n {
        var val1 = 0
        var val2 = 0
        
        val1 = arr[i]
        if i >= 2 {
            val1 += dp[i - 2]
        }
        
        val2 = arr[i]
        if i >= 1 {
            val2 += arr[i - 1]
        }
        if i == 3 {
            val2 += dp[i - 3]
        }
        if i >= 4 {
            // MARK: 연속해서 두번 이상 안먹을 경우고려 했는데 이게 맞남
            // 그냥 dp[i - 3]이랑 dp[i - 4]랑만 비교해줘도 되지 않을까
            // 3번 이상 안먹는 경우는 무조건 손해
            val2 += max(dp[i - 3], dp[i - 4])
        }
        
        dp[i] = max(val1, val2)
    }
    
    print(dp.max()!)
}
