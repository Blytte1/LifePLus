//
//  IntroView2.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/04/26.
//

import SwiftUI

struct IntroView: View{
     @State var introViewModel = IntroViewModel()
        @EnvironmentObject private var contentViewModel : ContentViewModel
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height:150)
                .rotation3DEffect(
                    .degrees(introViewModel.logoRotation), axis: (x:0, y: 1, z:0))
                .scaleEffect(introViewModel.logoscale)
            Spacer()
            VStack(alignment:.leading,spacing: 10) {
                Text("Olá, seja bem-vindo(a) ao Life Plus!")
                    .fontWeight(.bold)
                Text("Reponda algumas questões para identificar quais fatores impactam positivamente e negativamente sua expectativa de vida e tenha uma vida mais longa e saudável")
                
            }
            .padding(10)
            .font(.system(size:20))
            .fontWeight(.semibold)
            .foregroundColor(Color("textColor"))
            .background{Color("textBox")}
            .cornerRadius(25)
            .padding(10)
            //MARK: BUTTON
            Image("dr")
                .resizable()
                .scaledToFit()
                .frame(height:150)
                .rotation3DEffect(
                    .degrees(introViewModel.logoRotation), axis: (x:0, y: 1, z:0))
                .scaleEffect(introViewModel.logoscale)
                .padding(.bottom,30)
        }
    }
