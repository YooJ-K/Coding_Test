//
//  9095.swift
//  CodingTest
//
//  Created by 김유진 on 12/15/23.
//

import Foundation

func p9095() {
    let testCase: Int = Int(readLine()!)!
    var nArray: [Int] = []
    
    for _ in 0..<testCase {
        nArray.append(Int(readLine()!)!)
    }
    
    for n in nArray {
        var result = Array(repeating: 0, count: n+1)
        
        if n >= 1{
            result[1] = 1
        }
        
        if n >= 2 {
            result[2] = 2
        }
        
        if n >= 3 {
            result[3] = 4
        }
        
        if n >= 4 {
            for idx in 4...n {
                result[idx] = result[idx - 3] + result[idx - 2] + result[idx - 1]
            }
        }
        
        print(result[n])
    }
}
