//
//  Header.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 03/10/23.

import SwiftUI


    
struct ReportHeaderView: View{
 @Binding var user:User
   @State private var a = Color("textColor")
    @State private var scale = 1.0
    @EnvironmentObject var contentViewModel: ContentViewModel
var body: some View{
    VStack {
        ZStack {
            VStack{
                    //MARK: - Numero de anos
                    ZStack{
                        Circle()
                            .fill(.ultraThickMaterial)
                            .frame(width:400)
                        Circle()
                            .stroke(lineWidth: 5)
                            .fill(Color("textBox"))
                            .frame(width:300)
                        VStack (spacing:0){
                            Text("Viva")
                                .font(.system(size: 35))
                            Text( user.lifeExpectancy.totalLifeExpectancy>0 ? "+ \(user.lifeExpectancy.totalLifeExpectancy,format: .number.locale(.current))": " \(user.lifeExpectancy.totalLifeExpectancy,format: .number.locale(.current))"
                            )
                                .font(.system(size: 35))
                            Text("anos")
                                .font(.system(size: 35))
                        }
                        .foregroundStyle(.red)
                        .fontWeight(.semibold)
                    }
                VStack (alignment:.center){
                    if (user.finalLifeExpectancy) > user.lifeExpectancy.initialLifeExpectancy{
                        Text("Parabéns, você superou a expectativa de vida média do seu país!")
                    } else if (user.finalLifeExpectancy) == user.lifeExpectancy.initialLifeExpectancy{
                        Text("Parabéns, você está dentro da média de expectativa de vida para \(user.lifeExpectancy.naturality).")
                    }
                    else if (user.finalLifeExpectancy) < user.age && user.age <= user.lifeExpectancy.initialLifeExpectancy{
                            
                        Text("Atenção: Sua expectativa de vida é negativa, procure ajuda profissional e realizes mudanças em seu estilo de vida o quanto antes.")
                            .foregroundStyle(a)
                            .font(.callout)
                            .frame(width: 300)
                            .scaleEffect(scale)
                            .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: scale)
                                
                                .onAppear(){
                                    DispatchQueue.main.asyncAfter(deadline:.now() + 0.1){ 
                                        a = Color.red
                                       
                                        scale += 0.25
                                    }
                                }
                    }
                    else{
                        Text("Atenção: você está abaixo da média da população do seu país, considere rever seus hábitos urgentemente!")
                            .foregroundStyle(.red)
                    }
                }
                .multilineTextAlignment(.center)
                .foregroundStyle(Color("textBox"))
                .font(.callout)
                .fontWeight(.semibold)
                    .padding(10)
                ZStack {
                    Rectangle()
                        .fill(.ultraThickMaterial)
                    Rectangle()
                       
                        .fill(Color("textBox"))
                       
                    VStack(alignment:.leading){
                        HStack {
                            Text("Idade:")
                            Text(user.age,format: .number.locale(.current))
                            Text("anos")
                        }
                    HStack {
                        Text("Sexo:")
                        Text(LocalizedStringKey(user.lifeExpectancy.questions[0].answerDescription))
                    }
                        HStack {
                            Text("Expectativa de vida:")
                            if user.finalLifeExpectancy>0{
                                Text(user.finalLifeExpectancy,format:.number)
                            }else{
                                Text(user.finalLifeExpectancy + user.age ,format:.number)
                            }
                            
                            Text("anos")
                        }
                    HStack {
                        Text("Expectativa de vida do país:")
                        Text(user.lifeExpectancy.initialLifeExpectancy,format: .number.locale(.current))
                        Text("anos")
                    }
                }
                .foregroundStyle(.white)
                .font(.title3)
                .padding(5)
                }
                .cornerRadius(5)
            }
        }
        .shadow(radius: 5)
    .frame(maxHeight: 400, alignment: .leading)
    
    .environment(\.locale, .init(identifier: contentViewModel.user.language))
    }
}
    
}
struct Header1_Previews: PreviewProvider{
   
   static var previews: some View{
       ReportView(user: DummyData.user)
           .environmentObject(ContentViewModel())
    }
}
