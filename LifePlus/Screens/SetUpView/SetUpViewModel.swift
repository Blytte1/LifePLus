//
//  SetUpViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 29/04/26.
//
import Observation
import Foundation
@Observable class SetUpViewModel {
    var dm: DataManager
    init(dm: DataManager) {
        self.dm = dm
    }
}
