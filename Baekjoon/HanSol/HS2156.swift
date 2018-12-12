//
//  HS2156.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 11. 18..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class HS2156: QuestionReader {
    override func solution() {
        let array = inputs[1...]
            .compactMap({ Int($0) })
        
        var dpTable = [Int].init(repeating: 0, count: array.count)
        if array.count < 3 {
            print(array.reduce(0, +))
            return
        } else {
            dpTable[0] = array[0]
            dpTable[1] = dpTable[0] + array[1]
            dpTable[2] = dpTable[1] + array[2]
        }
        
        for i in 3 ..< array.count {
            let v1 = dpTable[i - 2] + array[i] - array[i - 3]
            let v2 = dpTable[i - 3] + array[i] + array[i - 1] - array[i - 2]
            let v3 = (i - 4 < 0 ? 0 : dpTable[i - 4]) + array[i] + array[i - 1] + array[i - 2] - array[i - 3]
            
            dpTable[i] = max(v1, v2, v3, dpTable[i - 1])
            print(dpTable)
        }
        
        print(dpTable)
    }
}
