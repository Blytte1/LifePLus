//
//  NameView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 17/08/23.
//

import SwiftUI
struct NameViewModel{
    var contentViewModel = ContentViewModel()
    var user: User{
        didSet{
            contentViewModel.user = user
        }
    }
    var logoRotation: Double = 0.0
    var logoscale: Double = 1.0
    init(){ user = User(lifeExpectancy: DummyData.lifeExpectancy, name: "", age: 25)}
}

struct NameView: View {
    @State var nameViewModel = NameViewModel()
    @EnvironmentObject  var contentViewModel : ContentViewModel
    var body: some View {
        ScrollView {
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height:200)
                .fontWeight(.semibold)
                .padding()
                .rotation3DEffect(
                    .degrees(nameViewModel.logoRotation), axis: (x:0, y: 1, z:0))
                .scaleEffect(nameViewModel.logoscale)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
            
            VStack(alignment:.leading,spacing: 20) {
                
                
                Text("Insira seu nome:")
                
                TextField("Digite aqui", text: $nameViewModel.user.name)
                    .textFieldStyle(.roundedBorder)
                
                    .keyboardType(.alphabet)
                
                //ter um exemplo de proposta de anuncio
                Button{
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.5){  contentViewModel.path.append(Screen.content(nameViewModel.user))
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
                    
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .cornerRadius(10)
                .navigationBarBackButtonHidden(true)
            }
            .padding()
            .foregroundColor(Color("AccentColor"))
            .fontWeight(.semibold)
            .background(Color("background"))
            .cornerRadius(10)
        }
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.6)
                .background(.green)
                .opacity(0.2)
        }
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NameView()
                .environmentObject(ContentViewModel())
        }
    }
}
