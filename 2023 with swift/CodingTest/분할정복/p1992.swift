//
//  p1992.swift
//  CodingTest
//
//  Created by 김유진 on 12/28/23.
//

import Foundation

func p1992() {
    
    let n = Int(readLine()!)!
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        let input = readLine()!
        for (j, char) in input.enumerated() {
            arr[i][j] = Int(String(char))!
        }
    }
    
    print(divideAndConquer(arr: arr))
    
    func divideAndConquer(arr: [[Int]]) -> String {
        if arr.count == 1 {
            return "\(arr[0][0])"
        }
        
        if isSame(arr: arr) {
            return "\(arr[0][0])"
        }
        
        let half = arr.count / 2
        var string = "("
        string += divideAndConquer(arr: getSliceArray(arr: arr, x: 0..<half, y: 0..<half))
        string += divideAndConquer(arr: getSliceArray(arr: arr, x: 0..<half, y: half..<arr.count))
        string += divideAndConquer(arr: getSliceArray(arr: arr, x: half..<arr.count, y: 0..<half))
        string += divideAndConquer(arr: getSliceArray(arr: arr, x: half..<arr.count, y: half..<arr.count))
        string += ")"
        
        return string
    }
    
    func isSame(arr: [[Int]]) -> Bool {
        var num0 = 0
        var num1 = 0
        for a in arr {
            for s in a{
                if s == 1 {
                    num1 += 1
                }
                else {
                    num0 += 1
                }
                
                if num1 > 0 && num0 > 0 {
                    return false
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
