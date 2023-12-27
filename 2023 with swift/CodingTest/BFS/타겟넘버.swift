//
//  타겟넘버.swift
//  CodingTest
//
//  Created by 김유진 on 12/15/23.
//

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0
    
    func dfs(_ idx: Int, _ value: Int) {
        if idx == numbers.count {
            if target == value {
                result += 1
            }
            return
        }
        
        dfs(idx + 1, numbers[idx] + value)
        dfs(idx + 1, -1 * numbers[idx] + value)
    }
    
    dfs(0, 0)
    
    return result
}

func p43165() {
    print(solution([1, 1, 1, 1, 1], 3))
    print(solution([4, 1, 2, 1], 4))
}
