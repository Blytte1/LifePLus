//
//  enums.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 03/07/23.
//

import Foundation

enum Screen:Hashable{
    case loading
    case intro
    case name(User)
    case content(User)
    case report(User)
    case question(User,Question)
}
