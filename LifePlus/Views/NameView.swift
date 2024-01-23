//
//  NameView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 17/08/23.
//

import SwiftUI
struct NameView: View {
    private(set) var user: User
    @State private(set) var nameViewModel = NameViewModel()
    @EnvironmentObject  var contentViewModel : ContentViewModel
    var body: some View {
        ScrollView {
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height:150)
                .fontWeight(.semibold)
                .padding()
                .rotation3DEffect(
                    .degrees(nameViewModel.logoRotation), axis: (x:0, y: 1, z:0))
                .scaleEffect(nameViewModel.logoscale)
                
            VStack(alignment:.leading) {
                
               
                HStack{
                    Text("Qual sua idade?")
                    Picker("Idade", selection: ($nameViewModel.user.age)) {
                        ForEach(12...100, id: \.self){
                            Text("\($0)")
                                .tag(Double($0))
                        }
                    }
                }
                    .padding(5)
                Text("Selecione o País em que você vive:")
                    .padding(5)
                Picker("Selecione o País em que você vive:", selection: $nameViewModel.user.lifeExpectancy.naturality) {
                    ForEach(Country.allCases){
                        Text(LocalizedStringResource(stringLiteral:$0.rawValue))
                            .tag($0.rawValue)
                            .fontWeight(.black)
                    }
                }
                HStack {
                Text("Expectativa de vida do país:")
                    Text( nameViewModel.user.lifeExpectancy.initialLifeExpectancy,format:.number)
                    Text("anos")
                }
                Button{
                  
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.25){
                        nameViewModel.user.lifeExpectancy.totalLifeExpectancy = user.lifeExpectancy.initialLifeExpectancy - user.age
                        contentViewModel.path.append(Screen.content(nameViewModel.user))
                        contentViewModel.user = nameViewModel.user
                    }
                    withAnimation(
                        .easeIn(duration: 0.5)
                    )
                    {
                        nameViewModel.logoRotation += 360
                        nameViewModel.logoscale = 1.5
                    }
                }label:{
                    Text("Iniciar")
                        .frame(maxWidth:.infinity)
                        .foregroundStyle(.white)
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(10)
                .padding()
                
            }
            .foregroundColor(Color("textBox"))
            .fontWeight(.bold)
            .background{
                Color.white.opacity(0.3)
            }
            .cornerRadius(10)
            .padding(15)
        }
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.05)
                .ignoresSafeArea()
                .background(Color("background"))
        }
        .onAppear(){
            nameViewModel.user = user
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NameView(user: DummyData.user)
                .environmentObject(ContentViewModel())
              
        }
    }
}
