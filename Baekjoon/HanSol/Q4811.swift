//
//  Q4811.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 10. 31..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class Q4811: QuestionReader {
    override func solution() {
        let dpTable = [Int](repeating: 0, count: 30 + 1)
        
        inputs.compactMap{ Int($0) }
            .filter{ $0 != 0 }
            .forEach{ print(find($0))/*print(dpTable[$0])*/ }
    }
    
    func find(_ n: Int) -> Int {
        if n == 1 { return 1 }
        return 2 * find(n - 1) + 1
    }
}

