//
//  Logic.swift
//  DesitionMaker
//
//  Created by NICOLAS  TAUTIVA on 11/03/22.
//

import Foundation

struct Logic {
    
    let options = [true, false]
    
    func MakeDesition () -> Bool {
        let desition = options.randomElement()
        return desition!
    }
}
