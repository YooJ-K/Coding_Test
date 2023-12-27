//
//  의상.swift
//  CodingTest
//
//  Created by 김유진 on 12/16/23.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var category = Set<String>()
    
    for clothe in clothes {
        category.insert(clothe[1])
    }
    
    let categoryArray = Array(category)
    
    var name = Array(repeating: Array(repeating: "", count: 0), count: category.count)
    for clothe in clothes {
        let i = categoryArray.firstIndex(of: clothe[1])!
        name[i].append(clothe[0])
    }
    
    var result = clothes.count
    var resultM = 1
    
    for n in name {
        resultM *= n.count
    }
    
    if resultM != 1 && name.count != 1 {
        result += resultM
    }
    
    return result
}

func 의상() {
    print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))
    print(solution([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]]))
}
