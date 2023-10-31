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
