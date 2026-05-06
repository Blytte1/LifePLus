//
//  LifeExpectancy.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/08/23.
//

import Foundation

struct LifeExpectancy:Hashable{
    var questions:[Question]
    var nationality : String
    var initialLifeExpectancy: Double{ DummyData.countries[nationality] ?? 75.4}
    var totalLifeExpectancy:Double
}
