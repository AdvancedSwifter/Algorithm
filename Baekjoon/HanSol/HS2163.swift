//
//  HS2163.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 10. 31..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class HS2163: QuestionReader {
    override func solution() {
        let (n, m) = simpleTwoInteger()
        
        print(n - 1 + (m - 1) * n)
    }
}
