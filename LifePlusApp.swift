//
//  LifePlusApp.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI

@main
struct LifePlusApp: App {
  @StateObject var navigationModel = NavigationModel()
  @StateObject var contentViewModel = ContentViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigationModel.path) {
                IntroView()
                    .environmentObject(navigationModel)
                    .environmentObject(contentViewModel)
                    .navigationDestination(for: Screen.self){
                        screen in switch screen{
                            
                        case .intro:
                            IntroView()
                                .environmentObject(navigationModel)
                               
                        case .question(let life):
                            ContentView(lifePlus: life)
                                .environmentObject(navigationModel)
                                .environmentObject(contentViewModel)
                        case .report:
                            ReportView()
                                .environmentObject(navigationModel)
                                .environmentObject(contentViewModel)
                        }
                    }
            }
        }
    }
}
