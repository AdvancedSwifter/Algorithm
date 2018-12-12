//
//  Problem.swift
//  Baekjoon
//
//  Created by SeokWoo Lee on 13/12/2018.
//  Copyright © 2018 Naver. All rights reserved.
//

import Foundation

struct Problem {
    
    struct Input {
        
        
        
    }
    
    var testCase: Int
    var inputs: [Input]
    var terminatingKeyword: Input?
    
    init(testCase: Int = 1, inputs: [Input], terminatingKeyword: Input? = nil) {
        self.testCase = testCase
        self.inputs = inputs
        self.terminatingKeyword = terminatingKeyword
    }
    
}
