//
//  HS2845.swift
//  Baekjoon
//
//  Created by 이한솔 on 2018. 11. 5..
//  Copyright © 2018년 Naver. All rights reserved.
//

import Foundation

class HS2845: QuestionReader {
    override func solution() {
        let (w, h) = simpleTwoInteger(from: inputs.first)
        let values = inputs.last?.split(separator: " ").compactMap{ Int($0) } ?? []
        
        let result = values
            .map{ $0 - (w * h) }
            .map{ $0.description }
            .joined(separator: " ")
        
        print(result)
    }
}
