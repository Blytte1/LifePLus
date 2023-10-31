//
//  Gender.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

enum  Gender:Int,CaseIterable{
    case female = 4
    case male = -3
}

extension Gender:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .female:
            return  "Feminino"
        case .male:
            return   "Masculino"
        }
    }
}
