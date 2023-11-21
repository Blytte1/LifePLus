//
//  Smoker.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum Smoker: Double, CaseIterable{
    case overtwo = -8
    case two = -6
    case one = -3
    case no = 0
}
extension Smoker:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .overtwo:
            return "Sim, acima dois de maços por dia"
        case .two:
            return "Sim, entre um e dois maços por dia"
        case .one:
            return "Sim, de meio a um maço por dia"
        case .no:
            return "Não"
        }
    }
}
