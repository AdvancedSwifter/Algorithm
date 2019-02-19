//
//  Solvable.swift
//  Baekjoon
//
//  Created by SeokWoo Lee on 13/12/2018.
//  Copyright © 2018 Naver. All rights reserved.
//

import Foundation

/// 문제 풀기 Protocol
protocol Solvable {
    
    associatedtype Output
    
    func solve() -> Output
    
}
