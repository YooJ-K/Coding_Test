//
//  skillCheck1.swift
//  CodingTest
//
//  Created by 김유진 on 12/16/23.
//

import Foundation

//func solution1(_ n:Int, _ costs:[[Int]]) -> Int {
//    var sortedCosts = costs
//    sortedCosts.sort { c1, c2 in
//        c1[2] < c2[2]
//    }
//    
//    var check = Array(repeating: 0, count: n + 1)
//    
//    for idx in 0...n {
//        check[idx] = idx
//    }
//    
//    func isCircled(_ edge: Int) -> Int {
//        if edge != check[edge] {
//            check[edge] = isCircled(check[edge])
//        }
//        return check[edge]
//    }
//    
//    func union(_ x: Int, _ y: Int) {
//        var r1 = isCircled(x)
//        var r2 = isCircled(y)
//        check[r2] = check[r1]
//    }
//    
//    var minCost = 0
//    
//    for cost in sortedCosts {
//        if isCircled(cost[0]) != isCircled(cost[1]) {
//            union(cost[0], cost[1])
//            minCost += cost[2]
//        }
//    }
//    
//    return minCost
//}
//
//func skillCheck1() {
//    solution1(4, [[0,1,1],[0,2,2],[1,2,5],[1,3,1],[2,3,8]])
//}
