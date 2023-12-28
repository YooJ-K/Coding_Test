//
//  P2630.swift
//  CodingTest
//
//  Created by 김유진 on 12/27/23.
//

import Foundation

func isUnified(arr: [[Int]]) -> Bool {
    var countWhite = 0
    var countBlue = 0
    for a in arr {
        for s in a{
            if s == 1 {
                countBlue += 1
            }
            else {
                countWhite += 1
            }
            
            if countBlue > 0 && countWhite > 0 {
                return false
            }
        }
    }
    return true
}

func p2630() {
    let n = Int(readLine()!)!
    
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for idx in 0..<n {
        let tmp = readLine()!.split(separator: " ").map { Int($0)! }
        for (j, t) in tmp.enumerated() {
            arr[idx][j] = t
        }
    }
    
    struct Color {
        var white: Int
        var blue: Int
        
        mutating func add(newValue: Color) {
            self.white += newValue.white
            self.blue += newValue.blue
        }
    }
    
    func divideAndConquer(arr: [[Int]]) -> Color {
        if arr.count == 1 {
            if arr[0][0] == 1 {
                return Color(white: 0, blue: 1)
            }
            else {
                return Color(white: 1, blue: 0)
            }
        }
        
        if isUnified(arr: arr) {
            if arr[0][0] == 1 {
                return Color(white: 0, blue: 1)
            }
            else {
                return Color(white: 1, blue: 0)
            }
        }
        
        let half = arr.count / 2
        
        var sum = Color(white: 0, blue: 0)
        sum.add(newValue: divideAndConquer(arr: getSliceArray(arr: arr, x: 0..<half, y: 0..<half)))
        sum.add(newValue: divideAndConquer(arr: getSliceArray(arr: arr, x: half..<arr.count, y: 0..<half)))
        sum.add(newValue: divideAndConquer(arr: getSliceArray(arr: arr, x: 0..<half, y: half..<arr.count)))
        sum.add(newValue: divideAndConquer(arr: getSliceArray(arr: arr, x: half..<arr.count, y: half..<arr.count)))
        
        return sum
    }
    
    let result = divideAndConquer(arr: arr)
    print(result.white)
    print(result.blue)
    
    func getSliceArray(arr: [[Int]], x: Range<Int>, y: Range<Int>) -> [[Int]] {
        var tmpArray: [[Int]] = []
        
        for i in x {
            tmpArray.append(Array(arr[i][y]))
        }
        
        return tmpArray
    }
}
