//
//  WorkOver65.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation
enum Workover65:Double, CaseIterable{
    case yes = 3
    case no = 0
}
extension Workover65:CustomStringConvertible, Identifiable{
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
