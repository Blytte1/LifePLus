//
//  ReportViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation

struct  ReportViewModel: Identifiable{
    var id = UUID()
    let question:Question
    var isActive:Bool = false
    var isShowing: Bool = false
}
