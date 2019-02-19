//
//  Readable.swift
//  Baekjoon
//
//  Created by SeokWoo Lee on 19/02/2019.
//  Copyright © 2019 Naver. All rights reserved.
//

import Foundation

/// 문제 읽기 Protocol
protocol Readable {
    
    associatedtype Input
    
    var input: Input { get set }
    var separator: String { get }
    var numberOfLine: Int { get }
    
    func read()
    
}

// MARK: - Default Implementation
extension Readable {
    
    var separator: String { return " " }
    var numberOfLine: Int { return 1 }
    
    mutating func read() {
        (0..<self.numberOfLine)
            .forEach { _ in
                readLine()
        }
    }
    
}
