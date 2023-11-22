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
                
                IntroView()
                    .environmentObject(contentViewModel)
                    .navigationDestination(for: Screen.self){
                        screen in switch screen{
                       
                        case .intro:
                            IntroView()
                                .environmentObject(contentViewModel)
                            
                        case .content(let user):
                            ContentView(user: user)
                                .environmentObject(contentViewModel)
                            
                        case .report(let user):
                            ReportView(user: user)
                                .environmentObject(contentViewModel)
                            
                        case .transition(let user):
                            TransitionView(user:user)
                                .environmentObject(contentViewModel)
                            
                        case .name(let user):
                            NameView(user:user)
                                .environmentObject(contentViewModel)
                        case .business:
                            BusinessView()
                                .environmentObject(contentViewModel)
                        case .setup:
                            SetUpView()
                                .environmentObject(contentViewModel)
                            
                        }
                    }
            }
        }
    }
}
