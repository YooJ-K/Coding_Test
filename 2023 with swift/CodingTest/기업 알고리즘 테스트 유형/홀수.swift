//
//  홀수.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func 홀수() {
    var minNum = 101
    var sum = 0
    for _ in 1...7 {
        let num = Int(readLine()!)!
        if num / 2 * 2 != num {
            if num < minNum {
                minNum = num
            }
            sum += num
        }
    }
    if sum == 0 {
        print("-1")
    }
    else {
        print(sum)
        print(minNum)
    }
}
