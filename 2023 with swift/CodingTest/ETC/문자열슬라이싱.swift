//
//  문자열슬라이싱.swift
//  CodingTest
//
//  Created by 김유진 on 12/17/23.
//

import Foundation

func 문자열슬라이싱() {
    let str = "ABCDE"
    for idx in 0..<str.count {
        print(str[idx])
    }
    
    print(str[0..<1])
}

extension String {
    // []
    subscript(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
    
    // [..<]
    subscript(_ range: Range<Int>) -> String {
        let fromIndex = self.index(self.startIndex, offsetBy: range.startIndex)
        let toIndex = self.index(self.startIndex,offsetBy: range.endIndex)
        return String(self[fromIndex..<toIndex])
    }
}
