//
//  LifePlusUIView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI

struct IntroViewModel{
    var user = DummyData.user
    var logoRotation = 0.0
    var logoscale = 1.0
}


struct IntroView: View {
    @State var introViewModel = IntroViewModel()
    @EnvironmentObject private var contentViewModel : ContentViewModel
    var body: some View {
        ScrollView {
         Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                    .rotation3DEffect(
                        .degrees(introViewModel.logoRotation), axis: (x:0, y: 1, z:0))
                    .scaleEffect(introViewModel.logoscale)
                    .frame(maxWidth:.infinity, maxHeight: .infinity)
        
            VStack(alignment:.leading,spacing: 10) {
                    Text("Bem vindo(a) ao Life Plus!")
                    .fontWeight(.bold)
                Text("Tenha uma vida mais longa e saudável em apenas duas etapas:")
                        //.lineLimit(3...)
                        .fontWeight(.bold)
                        .padding(.bottom)
                        Text("1º Diagnóstico de expectativa de vida;")
                        Text("2º Relatório detalhado com dicas para te ajudar extender sua expectativa de vida.")
                    .lineLimit(2...)
                }
            .font(.system(size:20))
            .foregroundColor(Color("AccentColor"))
            .padding(20)
            .background(Color("background"))
            .cornerRadius(10)
           
                //MARK: BUTTON
                Spacer()
            Button{
                withAnimation(.easeIn(duration: 0.5)){
                    introViewModel.logoRotation += 360
                    introViewModel.logoscale = 1.3
                }
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5){ contentViewModel.path.append(Screen.name)}
            }label:{
                    Text("Iniciar")
                        .frame(maxWidth:.infinity)
                }
                .buttonStyle(.borderedProminent)
                .navigationBarBackButtonHidden(true)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(10)
        }
        .background(.green.opacity(0.2))
        .background{
            Image("Wallpaper")
                .opacity(0.3)
        }
        
    }
}

struct LifePlusUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            IntroView()
                .environmentObject(ContentViewModel())
        }
    }
}
