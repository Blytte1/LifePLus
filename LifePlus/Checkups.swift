//
//  Checkup.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation
enum Checkups:Int, CaseIterable{
    case yes = 2
    case no = 0
}
extension Checkups:CustomStringConvertible, Identifiable{
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
