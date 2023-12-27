//
//  최대최소.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func 최대최소() {
    _ = Int(readLine()!)!
    var max = -1000001
    var min = 1000001
    
    let nums = readLine()!.split(separator: " ").map({ Int($0)! })
    for num in nums {
        if max < num {
            max = num
        }
        if min > num {
            min = num
        }
    }
    
    print("\(min) \(max)")
}
