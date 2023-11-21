//
//  Overwheight.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum OverWeight: Double, CaseIterable{
    case over15 = -8
    case until15 = -4
    case under = -2
    case no = 0
}
extension OverWeight:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .over15:
            return "Sim, por mais de 15 Kg"
        case .until15:
            return "Sim, entre 10 a 15 Kg"
        case .under:
            return "Sim, menos de 10 Kg"
        case .no:
            return "Não"
        }
    }
}
