//
//  Alcooholic.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum Alcoholic:Int, CaseIterable{
    case yes = -1
    case no = 0
}
extension Alcoholic:CustomStringConvertible, Identifiable{
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
