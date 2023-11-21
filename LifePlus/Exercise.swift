//
//  Exercise.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum Exercise:Double, CaseIterable{
    case five = 4
    case three = 2
    case zero = 0
}
extension Exercise:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .five:
            return "Sim, pelo menos 5 vezes por semana"
        case .three:
            return "Sim, pelo menos 3 vezes por semana"
        case .zero:
            return "Não me exercito regularmente"
        }
    }
}
