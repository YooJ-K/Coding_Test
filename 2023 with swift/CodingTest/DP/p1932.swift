//
//  p1932.swift
//  CodingTest
//
//  Created by 김유진 on 1/3/24.
//

import Foundation

func p1932() {
    let n = Int(readLine()!)!
    
    var arr = Array(repeating: Array<Int>(), count: n)
    var result = Array(repeating: Array<Int>(), count: n)
    
    for i in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        arr[i] = input
        result[i] = Array(repeating: 0, count: input.count)
    }
    
    for i in 0..<arr.count {
        if i == 0 {
            result[0][0] = arr[0][0]
            continue
        }
        
        for j in 0..<arr[i].count {
            if j - 1 < 0 {
                result[i][j] = result[i - 1][j] + arr[i][j]
                continue
            }
            if j == arr[i].count - 1 {
                result[i][j] = result[i - 1][j - 1] + arr[i][j]
                continue
            }
            result[i][j] = max(result[i - 1][j - 1], result[i - 1][j]) + arr[i][j]
        }
    }
    
    print(result[n - 1].max()!)
}
