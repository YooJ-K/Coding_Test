//
//  p15649.swift
//  CodingTest
//
//  Created by 김유진 on 12/16/23.
//

import Foundation

func p15649() {
    let input = readLine()!.split(separator: " ")
    let n = Int(input[0])!
    let m = Int(input[1])!
    
    var visited = Array(repeating: false, count: n)
    
    func dfs(_ i: Int, _ nums: [Int]) {
        if nums.count == m {
            print(nums.map { String($0) }.joined(separator: " "))
            return
        }
        
        for j in 0..<n {
            if !visited[j] {
                visited[j] = true
                var newNums = nums
                newNums.append(j)
                dfs(j, newNums)
                visited[j] = false
            }
        }
        
    }
    
    dfs(0, [])

}
//p15649()
