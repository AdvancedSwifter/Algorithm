//
//  HS1292.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 11. 18..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class HS1292: QuestionReader {
    override func solution() {
        let (n, m) = simpleTwoInteger()
        var table = [Int].init(repeating: 0, count: 1000 + 1)
        
        var x = 1
        var y = x
        
        for i in (1...1000) {
            if y == 0 {
                x += 1
                y = x
            }
            
            table[i] = x
            
            y -= 1
        }
        
        print(table[n...m].reduce(0, +))
    }
}
