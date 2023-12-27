//
//  book.swift
//  CodingTest
//
//  Created by 김유진 on 12/13/23.
//

import Foundation

func book() {
    let graph = [
        [],
        [2, 3, 8],
        [1, 7],
        [1, 4, 5],
        [3, 5],
        [3, 4],
        [7],
        [2, 6, 8],
        [1, 7]
    ]
    
    var visited = Array(repeating: false, count: 9)
    
    func dfs(start: Int) {
        var queue: [Int] = [start]
        visited[start] = true
        
        while !queue.isEmpty {
            let idx = queue.remove(at: 0)
            for point in graph[idx] {
                if !visited[point] {
                    queue.append(point)
                    visited[point] = true
                }
            }
            print(idx)
        }
        
    }
    
    dfs(start: 1)
}
