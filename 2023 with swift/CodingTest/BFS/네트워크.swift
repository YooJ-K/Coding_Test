//
//  네트워크.swift
//  CodingTest
//
//  Created by 김유진 on 12/15/23.
//

import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var visited = Array(repeating: false, count: n)
    
    func bfs(start: Int) {
        var queue: [Int] = [start]
        visited[start] = true
        
        while !queue.isEmpty {
            let idx = queue.removeFirst()
            for i in 0..<n {
                if i == idx {
                    continue
                }
                
                if computers[idx][i] == 1 && visited[i] == false {
                    queue.append(i)
                    visited[i] = true
                }
            }
        }
    }
    
    var result = 0
    
    for iter in 0..<n {
        if visited[iter] == false {
            bfs(start: iter)
            result += 1
        }
    }
    
    return result
}

func 네트워크() {
    print(solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]]))
    print(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]))
}
