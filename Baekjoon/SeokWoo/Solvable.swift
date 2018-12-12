//
//  Solvable.swift
//  Baekjoon
//
//  Created by SeokWoo Lee on 13/12/2018.
//  Copyright © 2018 Naver. All rights reserved.
//

import Foundation

protocol Solvable {
    
    func solve(_ problem: Problem)
    
}

extension Solvable {
    
    func solve(_ problem: Problem) {
        assert(true, "You must override solve(_) function.")
    }
    
}
