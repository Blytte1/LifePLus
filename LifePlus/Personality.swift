//
//  Personality.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum Personality:Int, CaseIterable{
    case calm = 3
    case intense = -3
    case outgoing = 1
    case introvert = -1
}
extension Personality:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .calm:
            return "Tranquilo"
        case .intense:
            return "Intenso"
        case .outgoing:
            return "Extrovertido"
        case .introvert:
            return "Introvertido"
        }
    }
}
