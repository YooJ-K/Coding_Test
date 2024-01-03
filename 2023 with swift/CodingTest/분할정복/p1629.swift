//
//  p1629.swift
//  CodingTest
//
//  Created by 김유진 on 1/3/24.
//

import Foundation

func p1629() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    func getRest(_ n: Int) -> Int {
        return n - n / input[2] * input[2]
    }
    
    func divideAndConquer(_ n: Int) -> Int {
        if n == 1 {
            return getRest(input[0])
        }
        
        if n % 2 == 0 {
            let value = divideAndConquer(n / 2)
            return getRest(value * value)
        }
        else {
            return getRest(divideAndConquer(n / 2) * divideAndConquer(n / 2 + 1))
        }
    }
    
    let result = divideAndConquer(input[1])
    print(getRest(result))
}
