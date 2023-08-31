//
//  LifePlusApp.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI

@main
struct LifePlusApp: App {
  
  @StateObject var contentViewModel = ContentViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $contentViewModel.path) {
                Loading()
                    .environmentObject(contentViewModel)
                    .navigationDestination(for: Screen.self){
                        
                        screen in switch screen{
                        case .loading:
                            Loading()
                        case .intro:
                            IntroView()
                                .environmentObject(contentViewModel)
                        case .content(let user):
                            ContentView(user: user)
                                .environmentObject(contentViewModel)
                        case .report(let user):
                            ReportView(user: user)
                                .environmentObject(contentViewModel)
                        case .question(let user, let question):
                            QuestionView(user:user,question:question)
                                .environmentObject(contentViewModel)
                        case .name:
                            NameView()
                                .environmentObject(contentViewModel)
                        }
                    }
            }
        }
    }
}
