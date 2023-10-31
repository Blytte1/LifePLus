//
//  LifePlusUIView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23
//

import SwiftUI



struct IntroView: View {
    @State var introViewModel = IntroViewModel()
    @EnvironmentObject private var contentViewModel : ContentViewModel
    var body: some View {
        ScrollView {
         Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:150)
                    .rotation3DEffect(
                        .degrees(introViewModel.logoRotation), axis: (x:0, y: 1, z:0))
                    .scaleEffect(introViewModel.logoscale)
                    .frame(maxWidth:.infinity, maxHeight: .infinity)
                    .padding(.bottom,30)
            VStack(alignment:.leading,spacing: 10) {
                Text("Bem-vindo ao LifePlus!")
                    .fontWeight(.bold)
                Text("Responda um breve questionário para receber dicas valiosas que te ajudarão a ter uma vida mais longa e saudável.")
                Text("Atenção: esse app não tem fins medicinais. Para maiores informações o médico deverá ser consultado.")
                    .font(.callout)
                    .lineLimit(2...)
                    .foregroundStyle(.white)
                }
            .padding(10)
            .font(.system(size:20))
            .fontWeight(.semibold)
            .foregroundColor(Color("textColor"))
            .background{Color("textBox")}
            .cornerRadius(25)
            .padding(10)
                //MARK: BUTTON
                Spacer()
            Text("Selecione um idioma")
                .foregroundStyle(Color("textColor"))
            HStack {
                Button("Português") {
                  withAnimation {
                      contentViewModel.user.language = "pt-BR"
                      introViewModel.user.language = "pt-BR"
                  }
                }
                   .padding()
                 Button("Español") {
                   withAnimation {
                       contentViewModel.user.language = "es"
                       introViewModel.user.language = "es"
                   }
                 }
                 .padding()
                 Button("English") {
                   withAnimation {
                       contentViewModel.user.language = "en"
                       introViewModel.user.language = "en"
                   }
                 }
               }
            .padding()
            Button{
                withAnimation(.easeIn(duration: 0.3)){
                    introViewModel.logoRotation += 360
                    introViewModel.logoscale = 1.3
                }
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5){ contentViewModel.path.append(Screen.name(introViewModel.user))}
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
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.05)
                .ignoresSafeArea()
                .background(Color("background"))
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
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
