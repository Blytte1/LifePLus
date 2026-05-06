//
//  NameView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 17/08/23.
//

import SwiftUI
struct NameView: View {
    
    @State private(set) var vm : NameViewModel


    var body: some View {
        VStack {
            
            LogoView()

            VStack(alignment:.leading){
                HStack{
                    Text("Nome:")
                    TextField("Digite Seu Nome:", text: $vm.name)
                        .foregroundColor(Color("textBox"))
                        .padding(.leading,5)
                }

                HStack{
                    Text("Selecione a sua idade:")
                        .bold()
                    Picker("Idade", selection: ($vm.age)) {
                        ForEach(12...100, id: \.self){
                            Text("\($0)")
                            .tag(Double($0))
                        }
                    }
                    .scaleEffect(1.2)
                }
                HStack{
                    Text("Selecione seu sexo biológico:")
                        .bold()
                    Picker("Idade", selection: ($vm.sex)) {
                        ForEach(Sex.allCases, id: \.self){
                            Text($0.rawValue)
                            .tag($0)
                        }
                    }
                    .scaleEffect(1.2)
                }
                HStack{
                    Text("País onde vive:")
                        .bold()

                    Picker("Selecione o País em que você vive:", selection: $vm.nationality) {
                        ForEach(DummyData.countries.keys.sorted(), id: \.self) { countryName in
                                Text(countryName)
                                    .fontWeight(.black)
                                    .tag(countryName)
                            }
                    }
                    .scaleEffect(1.2)
                    .offset(x:5)
                    .padding(.horizontal)
                }
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("textBox"), lineWidth: 2)
                    
                    VStack(alignment: .leading) {
                        Text(vm.displayText)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color("textColor"))
                            .animation(.none, value: vm.displayText)
                            .lineLimit(3, reservesSpace: true)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: 350)
                .padding(.top)
                Image("dra")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity,minHeight: 100, alignment: .trailing)
                    .padding(.leading,10)

                Button{
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.25){
                        vm.setUserinfo()
                        vm.dm.navigate(.content(ContentViewModel(dm: vm.dm)))
                    }

                }label: {
                    Text("Continuar")
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .foregroundStyle(.white)
                }
                .buttonStyle(.borderedProminent)
                .padding()
                .navigationBarBackButtonHidden(true)
                .cornerRadius(10)
            }
            .padding(.horizontal,15)
            .foregroundColor(Color("textBox"))
            .fontWeight(.bold)
            .cornerRadius(10)
        }
        .font(.title3)
       
        .onAppear {
            let text = "A expectativa de vida média de uma pessoa nascida em \(vm.nationality) é de: \(vm.dm.user.lifeExpectancy.initialLifeExpectancy) anos."
            vm.startTyping(text: text)
        }
        .onChange(of: vm.nationality) { _, newValue in
            let text = "A expectativa de vida média de uma pessoa nascida em \(newValue) é de: \(DummyData.countries[newValue] ?? 0.0) anos."
            vm.startTyping(text: text)
        }
        .environment(\.locale, .init(identifier: vm.dm.language))
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NameView(vm: NameViewModel(dm: DummyData.dm))
        }
    }
}
