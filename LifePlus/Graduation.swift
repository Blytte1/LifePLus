//
//  Graduation.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum Graduation: Int, CaseIterable{
    case bachelor = 1
    case professional = 2
    case no = 0
}
extension Graduation:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .bachelor:
            return "Sim, Graduação universitária"
        case .professional:
            return "Sim, Graduação profissionalizante"
        case .no:
            return "Sem graduação."
        }
    }
}
