//
//  Model.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 19/06/23.
//

import Foundation

struct User:Hashable, Identifiable{
    var id = UUID()
    var lifeExpectancy: LifeExpectancy
    var name: String
    var age:Int
}




