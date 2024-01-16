//
//  1931.swift
//  CodingTest
//
//  Created by 김유진 on 1/5/24.
//

import Foundation

func p1931(){
    let n = Int(readLine()!)!
    var time = Array(repeating: Array(repeating: 0, count: 2), count: n)
    var max = 0
    
    for i in 0..<n{
        time[i] = readLine()!.split(separator: " ").map { Int($0)! }
        if time[i][1] > max {
            max = time[i][1]
        }
    }
    
    time.sort { a, b in
        a[0] < b[0]
    }
    
    time.sort { a, b in
        a[1] - a[0] < b[1] - b[0]
    }
    
    var booked = Array(repeating: false, count: max + 1)
    var result = 0
    for t in time {
        if isEmpty(start: t[0], end: t[1]) {
            fill(start: t[0], end: t[1])
            result += 1
        }
    }
    print(result)
    
    func isEmpty(start: Int, end: Int) -> Bool {
        for i in start..<end {
            if booked[i] {
                return false
            }
        }
        return true
    }
    
    func fill(start: Int, end: Int) {
        for i in start..<end {
            booked[i] = true
        }
    }
}
