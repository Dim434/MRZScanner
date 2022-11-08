//
//  File.swift
//  
//
//  Created by Dmitry on 11/8/22.
//

import Foundation
import MRZParser
extension MRZCode: Hashable {
    public static func == (lhs: MRZCode, rhs: MRZCode) -> Bool {
        lhs.documentNumberField.value == rhs.documentNumberField.value
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.finalCheckDigit)
        hasher.combine(self.documentNumberField.value)
    }
}
