//
//  LifePlusUIView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI

struct LifePlusViewModel{
    var lifeExpectancy = LifeExpectancy(questions: DummyData.questions, naturality: "🇧🇷 Brasil")
}


struct IntroView: View {
    @State var lifePlusViewModel = LifePlusViewModel()
    var body: some View {
        VStack {
            HStack {
                Text("LIFE PLUS")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .fontWeight(.heavy)
                    .fontDesign(.monospaced)
                    Image(systemName: "cross")
                    .foregroundColor(.green)
                    .opacity(0.5)
                    .imageScale(.large)
                    .fontWeight(.heavy)
                    .background()
                    .cornerRadius(10)
            }
            
            .padding()
            .background(Color("lightGreen"))
            .font(.largeTitle)
            .shadow(color: .green, radius: 10)
        .cornerRadius(10)
           
            VStack {
                VStack(alignment:.leading,spacing:20) {
                    Text("      Bem vindo(a) ao Life Plus, o app que te ajuda a ter uma vida mais longa e com maior qualidade com apenas duas etapas:")
                    Text("1º Diagnóstico de expectativa de vida.")
                    Text("2º Sugestões para extender sua expectativa de vida.")
                }
                .padding()
                Text("Vamos começar: role a barra para selecionar o país onde você vive, em seguida pressione em iniciar.")
                    .padding()
                    .fontWeight(.bold)
                //MARK: - PICKER
                Picker("País",selection: $lifePlusViewModel.lifeExpectancy.naturality){
                    ForEach(Country.allCases, id:\.self){ country in Text(country.rawValue).tag(country.rawValue)
                            .pickerStyle(.wheel)
                            .frame(width:350,height: 120)
                            .background(Color("lightGreen"))
                            .fontWeight(.semibold)
                            .font(.title)
                            .cornerRadius(20)
                    }
                }
                .frame(height:100)
                //MARK: - PICKERSTYLE
                .pickerStyle(.wheel)
                //MARK: - BUTTON
                Spacer()
                NavigationLink("Iniciar", value: Screen.question(lifePlusViewModel.lifeExpectancy))
                    .padding(10)
                    .background(Color("AccentColor"))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                Spacer()
            }
            .ignoresSafeArea()
            .background(Color(.white))
            .padding()
            .cornerRadius(70)
        }
        .background(Color("lightGreen"))
    }
}

struct LifePlusUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IntroView()
                .environmentObject(ContentViewModel())
        }
    }
}
