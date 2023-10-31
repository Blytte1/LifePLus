//
//  SLEEPER.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum Sleeper:Int, CaseIterable{
    case yes = -4
    case no = 0
}
extension Sleeper:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
