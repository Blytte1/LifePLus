//
//  Header2.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 03/10/23.
//

import SwiftUI
import Foundation
struct TransitionView: View {
   @EnvironmentObject var contentViewModel: ContentViewModel
    @State  var opacity = 1.0
    @State  var progress = 0.0
    private(set) var user:User
    var body: some View {
        
        VStack {
          Spacer()
            withAnimation(.easeInOut(duration: 2)) {
                VStack(){
                           
                        if progress <= 0.5{
                            ZStack{
                                Circle()
                                    .fill(Color("textBox"))
                                    .frame(width:150, height: 150)
                                    .cornerRadius(10)
                                    .padding(10)
                                
                                ProgressView("Calculando")
                                    .foregroundColor(.red)
                                   
                            }
                            Text("Processando dados recebidos.")
                                .padding()
                        }else if progress > 0.5 && progress < 0.9 {
                            ZStack{
                                Circle()
                                    .fill(Color("textBox"))
                                    .frame(width:150, height: 150)
                                    .cornerRadius(10)
                                    .padding(10)
                                   
                                ProgressView("Calculando")
                                    .foregroundColor(.red)
                                    
                            }
                            Text("Comparando dados com a média da expectativa de vida de seu país.")
                                .padding()
                        }else{
                            Button(){
                                
                            }label:{
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:150, height: 150)
                            }
                        
                            Text("Análise concluída. Toque o botão acima e acesse seus resultados.")
                                
                                .padding()
                        }
                    }
                .foregroundStyle(Color("textBox"))
            }
              Spacer()
            .environment(\.locale, .init(identifier: contentViewModel.user.language))
        }
        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now()+1){
                progress = 0.1
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+6){
                progress = 0.6
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+10){
                progress += 1
            }
        }.background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.05)
                .ignoresSafeArea()
                .background(Color("background"))
        }
    }
}
struct Header2_Previews: PreviewProvider{
   
   static var previews: some View{
       TransitionView(user: DummyData.user)
           .environmentObject(ContentViewModel())
    }
}
