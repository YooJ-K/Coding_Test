//
//  단어공부.swift
//  CodingTest
//
//  Created by 김유진 on 12/18/23.
//

import Foundation

func 단어공부() {
    let word = readLine()!.uppercased()
    
    var count: [Character: Int] = [:]
    
    for char in word {
        if let _ = count[char] {
            count[char]! += 1
        }
        else {
            count[char] = 1
        }
    }
    let sortedCount = count.sorted { a, b in
        a.value > b.value
    }
    
    if sortedCount.count != 1 && sortedCount[0].value == sortedCount[1].value {
        print("?")
    }
    else {
        print(sortedCount[0].key)
    }
    
}
