//
//  Model.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 19/06/23.
//

import Foundation

struct User:Hashable, Identifiable{
    var id = UUID().uuidString
    var name: String
    var age: Double
    var sex: Sex
    var lifeExpectancy: LifeExpectancy
    var finalLifeExpectancy:Double{
       age + lifeExpectancy.totalLifeExpectancy
    }
}
enum Sex:String, Codable, CaseIterable{
    case masculino, feminino
}
