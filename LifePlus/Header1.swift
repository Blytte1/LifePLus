//
//  Header.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 03/10/23.

import SwiftUI


    
struct Header1View: View{
let user:User
    
var body: some View{
    VStack {
        ZStack {
            VStack{
                    //MARK: - Numero de anos
                    ZStack{
                        Circle()
                            .fill(.ultraThickMaterial)
                            .frame(width:120)
                        Circle()
                            .stroke(lineWidth: 5)
                            .fill(Color("textBox"))
                            .frame(width:120)
                        VStack (spacing:0){
                            Text("Viva +")
                                .font(.system(size: 20))
                            Text( "\(user.lifeExpectancy.totalLifeExpectancy - user.age,format: .number.locale(.current))"
                            )
                                .font(.system(size: 30))
                            Text("anos")
                                .font(.system(size: 20))
                        }
                        .foregroundStyle(.red)
                        .fontWeight(.semibold)
                    }
                VStack (alignment:.center){
                    if (user.age + user.lifeExpectancy.totalLifeExpectancy) > user.lifeExpectancy.initialLifeExpectancy{
                        Text("Parabéns, você superou a expectativa de vida média do seu país!")
                    } else if (user.age + user.lifeExpectancy.totalLifeExpectancy) == user.lifeExpectancy.initialLifeExpectancy{
                        Text("Parabéns, você está dentro da média de expectativa de vida para \(user.lifeExpectancy.naturality).")
                    }
                    else{
                        Text("Atenção: você está abaixo da média da população de \(user.lifeExpectancy.naturality)!")
                    }
                }
                .multilineTextAlignment(.center)
                .foregroundStyle(Color("textColor"))
                .font(.title3)
                .fontWeight(.semibold)
                    .padding(.top,2)
                ZStack {
                    Rectangle()
                        .fill(.ultraThickMaterial)
                    Rectangle()
                        .stroke(lineWidth: 10)
                        .fill(Color("textBox"))
                       
                    VStack(alignment:.leading){
                        HStack {
                            Text("Idade:")
                            Text(user.age,format: .number.locale(.current))
                            Text("anos")
                        }
                    HStack {
                        Text("Sexo:")
                        Text(user.lifeExpectancy.questions[0].answerDescription)
                    }
                        HStack {
                            Text("Expectativa Pessoal:")
                            Text(user.lifeExpectancy.totalLifeExpectancy + user.age,format: .number.locale(.current))
                            Text("anos")
                        }
                    HStack {
                        Text("Expectativa de vida do país:")
                        Text(user.lifeExpectancy.initialLifeExpectancy,format: .number.locale(.current))
                        Text("anos")
                    }
                }
                .font(.title3)
                .padding(5)
                }
                .cornerRadius(5)
            }
        }
        .shadow(radius: 5)
    .frame(maxHeight: 280, alignment: .leading)
    
       
    }
}
    
}
struct Header1_Previews: PreviewProvider{
   
   static var previews: some View{
       Header1View(user: DummyData.user)
           .environmentObject(ContentViewModel())
    }
}
