////
////  skillCheck2.swift
////  CodingTest
////
////  Created by 김유진 on 12/16/23.
////
//
//import Foundation
//
//func solution(_ board:[[Int]], _ r:Int, _ c:Int) -> Int {
//    
//    struct Point {
//        var x: Int
//        var y: Int
//        
//        init(_ x: Int, _ y: Int) {
//            self.x = x
//            self.y = y
//        }
//    }
//    
//    var visited = Array(repeating: Array(repeating: false, count: 5), count: 5)
//    
//    func bfs(start: Int) {
//        var queue: [Int, Int] = [start]
//        visited[start] = true
//        
//        while !queue.isEmpty {
//            let idx = queue.remove(at: 0)
//            for point in graph[idx] {
//                if !visited[point] {
//                    queue.append(point)
//                    visited[point] = true
//                }
//            }
//            print(idx)
//        }
//        
//    }
//    
//    bfs(start: 1)
//    return 0
//}
//
//func skillCheck2() {
//    
//}
