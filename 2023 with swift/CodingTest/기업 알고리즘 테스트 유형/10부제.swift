//
//  10부제.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func p10부제() {
    let n = Int(readLine()!)!
    let carNum = readLine()!.split(separator: " ").map({Int($0)!})
    var result = 0
    for car in carNum {
        if n == (car - car / 10 * 10) {
            result += 1
        }
    }
    print(result)
}
