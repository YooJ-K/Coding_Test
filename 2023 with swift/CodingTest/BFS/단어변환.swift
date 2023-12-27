//
//  단어변환.swift
//  CodingTest
//
//  Created by 김유진 on 12/15/23.
//

import Foundation

func 단어변환() {
    print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]))
    print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log"]))
}

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    _ = Array(repeating: false, count: words.count)
    
    func isOneWordDiff(_ word1: String, _ word2: String) -> Bool {
        
        _ = word1.split(separator: "")
        _ = word2.split(separator: "")
        for _ in 0..<word1.count {
        }
        return false
    }
    
    print(isOneWordDiff("hit", "hot"))
    
    func dfs(word: String) {
        
    }
    return 0
}
