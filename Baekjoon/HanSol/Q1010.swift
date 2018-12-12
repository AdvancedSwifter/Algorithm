//
//  Q1010.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 10. 31..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class Q1010: QuestionReader {
    override func solution() {
        let (_, values) = testCaseAndInput()
        
        values.forEach { value in
            let (n, m) = simpleTwoInteger(from: value)
            var dpTable = [[Int]](repeating: [Int](repeating: 0, count: m + 1), count: n + 1)
            
            (0...m).forEach{ dpTable[0][$0] = 1 }
            (1...n).forEach{ i in
                (i...m).forEach{ j in
                    dpTable[i][j] = dpTable[i - 1][0...(j - 1)].reduce(0, +)
                }
            }
            
            print(dpTable[n][m])
        }
    }
}
