//
//  Age.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation
import SwiftUI

enum Ages:Int,CaseIterable{
    case under30 = 0
    case between30and50 = 2
    case over50 = 4
}
extension Ages:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .under30:
            return  "Até 29 anos."
        case .between30and50:
            return   "De 30 a 50 anos."
        case .over50:
            return "Acima de 50 anos."
        }
    }
}

