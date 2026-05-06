//
//  NavigationModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 20/10/23.
//

import Foundation
@Observable
class NavigationRouter {
    var path: [Screen] = []
    
    func navigate(_ to: Screen) {
        path.append(to)
    }
    
    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    func reset() {
        path = []
    }
}
enum Screen: Hashable {
    case intro(IntroViewModel)
    case name(NameViewModel)
    case content(ContentViewModel)
    case report(ReportViewModel)
    case setup(SetUpViewModel)
    case answer(AnswerViewModel)

    // Implementação obrigatória para Equatable (que Hashable herda)
    static func == (lhs: Screen, rhs: Screen) -> Bool {
        switch (lhs, rhs) {
        case (.intro(let l), .intro(let r)):
            return ObjectIdentifier(l) == ObjectIdentifier(r)
        case (.name(let l), .name(let r)):
            return ObjectIdentifier(l) == ObjectIdentifier(r)
        case (.content(let l), .content(let r)):
            return ObjectIdentifier(l) == ObjectIdentifier(r)
        case (.report(let l), .report(let r)):
            return ObjectIdentifier(l) == ObjectIdentifier(r)
        case (.setup(let l), .setup(let r)):
            return ObjectIdentifier(l) == ObjectIdentifier(r)
        case (.answer(let l), .answer(let r)):
            return ObjectIdentifier(l) == ObjectIdentifier(r)
        default:
            return false
        }
    }

    // Implementação obrigatória para Hashable
    func hash(into hasher: inout Hasher) {
        switch self {
        case .intro(let model):
            hasher.combine(ObjectIdentifier(model))
        case .name(let model):
            hasher.combine(ObjectIdentifier(model))
        case .content(let model):
            hasher.combine(ObjectIdentifier(model))
        case .report(let model):
            hasher.combine(ObjectIdentifier(model))
        case .setup(let model):
            hasher.combine(ObjectIdentifier(model))
        case .answer(let model):
            hasher.combine(ObjectIdentifier(model))
        }
    }
}
