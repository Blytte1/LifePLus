//
//  NavigationModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 20/10/23.
//

import Foundation
class NavigationModel{
    @Published var path: [Screen] = []
    func pop(){
        path.removeLast()
    }
    func reset(){
        path = []
    }
}
enum Screen:Hashable{
    case intro
    case name(User)
    case content(User)
    case report(User)
    case transition(User)
    case business
    case setup
    case answer(User)
}
