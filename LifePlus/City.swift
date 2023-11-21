//
//  City.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum City:Double, CaseIterable{
    case less10k = 2
    case between10kand2kk = 0
    case over2kk = -2
}
extension City:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .less10k:
            return "Menos de 10 mil pessoas"
        case .between10kand2kk:
            return "De 10 mil a 2 milhões de pessoas"
        case .over2kk:
            return "Mais de 2 milhões de pessoas"
        }
    }
}
