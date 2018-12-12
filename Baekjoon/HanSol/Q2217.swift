//
//  Q2217.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 10. 31..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class Q2217: QuestionReader {
    override func solution() {
        let (_, values) = testCaseAndInput()
        
        var max = 0
        var count = values.count
        
        values.compactMap{ Int($0) }.sorted(by: <)
            .forEach { i in
                max = max > count * i ? max : count * i
                count -= 1
        }
        
        print(max)
    }
}
