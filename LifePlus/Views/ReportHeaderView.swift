//
//  Header.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 03/10/23.

import SwiftUI


    
struct ReportHeaderView: View{
 @Binding var user:User
    @EnvironmentObject var contentViewModel: ContentViewModel
var body: some View{
    VStack {
        ZStack {
            VStack{
                    //MARK: - Numero de anos
                    ZStack{
                        Circle()
                            .fill(.ultraThickMaterial)
                            .frame(width:140)
                        Circle()
                            .stroke(lineWidth: 5)
                            .fill(Color("textBox"))
                            .frame(width:140)
                        VStack (spacing:0){
                            Text("Viva +")
                                .font(.system(size: 20))
                            Text( "\(user.lifeExpectancy.totalLifeExpectancy,format: .number.locale(.current))"
                            )
                                .font(.system(size: 30))
                            Text("anos")
                                .font(.system(size: 20))
                        }
                        .foregroundStyle(.red)
                        .fontWeight(.semibold)
                    }
                VStack (alignment:.center){
                    if (user.lifeExpectancy.initialLifeExpectancy + user.lifeExpectancy.totalLifeExpectancy) > user.lifeExpectancy.initialLifeExpectancy{
                        Text("Parabéns, você superou a expectativa de vida média do seu país!")
                    } else if (user.lifeExpectancy.initialLifeExpectancy + user.lifeExpectancy.totalLifeExpectancy) == user.lifeExpectancy.initialLifeExpectancy{
                        Text("Parabéns, você está dentro da média de expectativa de vida para \(user.lifeExpectancy.naturality).")
                    }
                    else{
                        Text("Atenção: você está abaixo da média da população do seu país, considere rever seus hábitos urgentemente!")
                            .foregroundStyle(.red)
                    }
                }
                .multilineTextAlignment(.center)
                .foregroundStyle(Color("textBox"))
                .font(.title3)
                .fontWeight(.semibold)
                    .padding(.top,2)
                ZStack {
                    Rectangle()
                        .fill(.ultraThickMaterial)
                    Rectangle()
                        //.stroke(lineWidth: 10)
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
                            Text(user.age + user.lifeExpectancy.totalLifeExpectancy,format: .number.locale(.current))
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
    .frame(maxHeight: 290, alignment: .leading)
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
