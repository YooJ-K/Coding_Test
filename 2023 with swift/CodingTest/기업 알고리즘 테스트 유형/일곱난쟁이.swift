//
//  일곱난쟁이.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func 일곱난쟁이() {
    var heights: [Int] = []
    
    for _ in 1...9 {
        heights.append(Int(readLine()!)!)
    }
    
    var result: [Int] = []
    var isEnd: Bool = false
    
    func dfs(idx: Int, depth: Int, sum: Int) {
        if isEnd {
            return
        }
        if depth == 7{
            if sum == 100 {
                for r in result.sorted() {
                    print(r)
                }
                isEnd = true
            }
            return
        }
        if sum > 100 {
            return
        }
        for i in idx+1..<heights.count {
            let tempResult = result
            result.append(heights[i])
            dfs(idx: i, depth: depth + 1, sum: sum + heights[i])
            result = tempResult
        }
    }
    
    dfs(idx: -1, depth: 0, sum: 0)
    
}
