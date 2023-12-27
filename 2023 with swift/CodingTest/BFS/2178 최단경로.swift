//
//  2178.swift
//  CodingTest
//
//  Created by 김유진 on 12/13/23.
//

import Foundation

/// BFS의 장점 -> 최단 경로로 방문한다.
func p2178() {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    
    let n = input[0]
    let m = input[1]
    
    var graph = Array(repeating: Array(repeating: 0, count: m), count: n)
    var visited = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    for idx in 0..<n {
        let input2 = readLine()!
        
        for value in input2.enumerated() {
            if value.1 == "1" {
                graph[idx][value.0] = 1
            }
            else {
                graph[idx][value.0] = 0
            }
        }
    }
    
    struct Point {
        var x: Int
        var y: Int
    }
    
    func bfs(start: Point) {
        var queue: [Point] = [start]
        visited[start.x][start.y] = 1
        
        while !queue.isEmpty {
            let p = queue.remove(at: 0)
            
            if p.x == n - 1 && p.y == m - 1{
                break
            }
            
            if p.x + 1 < n && graph[p.x + 1][p.y] == 1 && visited[p.x + 1][p.y] == 0{
                queue.append(Point(x: p.x + 1, y: p.y))
                visited[p.x + 1][p.y] = visited[p.x][p.y] + 1
            }
            
            if p.y + 1 < m && graph[p.x][p.y + 1] == 1 && visited[p.x][p.y + 1] == 0 {
                queue.append(Point(x: p.x, y: p.y + 1))
                visited[p.x][p.y + 1] = visited[p.x][p.y] + 1
            }
            
            if p.x - 1 >= 0 && graph[p.x - 1][p.y] == 1 && visited[p.x - 1][p.y] == 0 {
                queue.append(Point(x: p.x - 1, y: p.y))
                visited[p.x - 1][p.y] = visited[p.x][p.y] + 1
            }
            
            if p.y - 1 >= 0 && graph[p.x][p.y - 1] == 1 && visited[p.x][p.y - 1] == 0 {
                queue.append(Point(x: p.x, y: p.y - 1))
                visited[p.x][p.y - 1] = visited[p.x][p.y] + 1
            }
            
        }
        
    }
    
    bfs(start: Point(x: 0, y: 0))
    print(visited[n - 1][m - 1])
}


