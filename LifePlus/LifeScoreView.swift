//
//  LifeScoreView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 20/11/23.
//

import SwiftUI

struct LifeScoreView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var user:User
    var body: some View {
        
        ZStack(alignment:.trailing){
            Rectangle()
                //.stroke(lineWidth:10)
                .fill(.ultraThickMaterial)
            Rectangle()
                .stroke(lineWidth:10)
                .fill(Color("textBox"))
            HStack {
                Spacer()
                VStack (){
                    HStack{
                        Text("Viva")
                            .foregroundStyle(Color("textBox"))
                            .font(.system(size: 60))
                            .fontWeight(.black)
                        VStack{
                            Text("+")
                                .font(.system(size: 50))
                                .fontWeight(.bold)
                               
                            Spacer()
                        }
                        .foregroundStyle(.red)
                    }
                }
                Spacer()
                //MARK: - Numero de anos
                ZStack{
                    Circle()
                        .stroke(lineWidth: 4)
                        .fill(Color("textBox"))
                        .frame(width:85)
                    VStack (spacing:0){
                        Text( "\(contentViewModel.user.lifeExpectancy.totalLifeExpectancy - contentViewModel.user.age,format: .number.locale(.current))"
                        )
                            .font(.system(size: 25))
                        Text("Anos")
                            .font(.system(size: 25))
                    }
                    .foregroundStyle(.red)
                    .fontWeight(.semibold)
                    .rotation3DEffect(
                        Angle(degrees: contentViewModel.rotation),
                        axis: (x:0,y:1,z:0))
                }
                .rotation3DEffect(
                    .degrees(contentViewModel.rotation),
                    axis: (x:0,y:1,z:0)
                )
                .animation(
                    .easeIn(duration: 0.5),
                    value: contentViewModel.rotation
                )
                Spacer()
            }
            .rotation3DEffect(
                .degrees(-360),
                axis: (1, 0,0)
            )
            .foregroundColor(.accentColor)
        }
        .animation(
            .easeInOut(duration: 1),
            value: contentViewModel.user.finalLifeExpectancy
        )
        .frame(maxWidth:.infinity, maxHeight:100)
        .cornerRadius(10)
        .padding(.horizontal)
        .shadow(radius: 20)
    }
}

#Preview {
    LifeScoreView(user: DummyData.user)
        .environmentObject(ContentViewModel())
}
