//
//  Logic.swift
//  DesitionMaker
//
//  Created by NICOLAS  TAUTIVA on 11/03/22.
//

import Foundation
import SwiftUI

class Logic {
        
    let options = [true, false]
    
    enum messages: String {
        case holdingTrue  = "Yes, proceed to the holding pattern!"
        case holdingFalse = "No, continue the procedure."
        case missedTrue  = "Yes, make the missed approach procedure!"
        case missedFalse = "No, continue the approach."
        case alternateTrue  = "Yes, go to your alternate airport!"
        case alternateFalse = "No, continue the approach to your destination."
        case questionTrue  = "Yes, your answers is YES"
        case questionFalse = "No, your answer is NO"
    }
    
    
    func MakeDesition () -> Bool {
        let desition = options.randomElement()
        return desition!
    }
}
