//
//  Lonely.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum Lonely: Int, CaseIterable{
    case decade = -3
    case decade2 = -6
    case decade3 = -9
    case decade4 = -12
    case no = 0
}
extension Lonely:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

       
        case .decade:
            return "Sim, por uma década"
        case .decade2:
            return "Sim, por duas décadas"
        case .decade3:
            return "Sim, por três décadas"
        case .decade4:
            return "Sim, por quatro décadas"
        case .no:
            return "Não"
        }
    }
}
