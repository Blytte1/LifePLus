//
//  NavigationModel.swift
//  SDFG
//
//  Created by Roberto Mascarenhas on 12/01/23.
//

import Foundation
class NavigationModel: ObservableObject{
    var path: [Screen] = []
    
    func pop(){
        path.removeLast()
    }

    func reset(){
        path = []
    }
}
enum Screen:Hashable{
    case intro
    case question(LifeExpectancy)
    case report
}
