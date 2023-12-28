//
//  p1780.swift
//  CodingTest
//
//  Created by 김유진 on 12/29/23.
//

import Foundation

// MARK: 재귀 함수는 배열을 넘겨주면 시간이 길어짐 -> 아래와 같이 해결할 수 있었음
// (x: Int, y: Int, size: Int) base와 size를 넘겨줘서 기본 배열 arr에 접근

func p1780() {
    let n = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        for j in 0..<n {
            arr[i][j] = input[j]
        }
    }
    
    var result = Array(repeating: 0, count: 3)
    
    if arr.count != 0 {
        divideAndConquer(x: 0, y: 0, size: n)
    }
    for r in result {
        print(r)
    }
    
    func divideAndConquer(x: Int, y: Int, size: Int) {
        let divide = size / 3
        let newArray = getSliceArray(arr: arr, x: x..<x + size, y: y..<y + size)
        
        if newArray.count == 1 || isSame(arr: newArray) {
            result[arr[x][y] + 1] += 1
            return
        }
        
        for i in stride(from: x, to: x + size, by: divide) {
            for j in stride(from: y, to: y + size, by: divide) {
                if divide == 1{
                    // 여기서 먼저 점검해주면서 1단계 얕게 해줬더니 통과함
                    result[arr[i][j] + 1] += 1
                    continue
                }
                divideAndConquer(x: i, y: j, size: divide)
            }
        }
    }
    
    func isSame(arr: [[Int]]) -> Bool {
        var num_1 = 0
        var num0 = 0
        var num1 = 0
        for a in arr {
            for s in a{
                if s == 1 {
                    num1 += 1
                    if num0 != 0 || num_1 != 0 {
                        return false
                    }
                }
                else if s == 0 {
                    num0 += 1
                    if num1 != 0 || num_1 != 0 {
                        return false
                    }
                }
                else {
                    num_1 += 1
                    if num0 != 0 || num1 != 0 {
                        return false
                    }
                }
            }
        }
        return true
    }
    
    func getSliceArray(arr: [[Int]], x: Range<Int>, y: Range<Int>) -> [[Int]] {
        var tmpArray: [[Int]] = []
        
        for i in x {
            tmpArray.append(Array(arr[i][y]))
        }
        
        return tmpArray
    }
}
