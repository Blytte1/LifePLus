//
//  Header2.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 03/10/23.
//

import SwiftUI
import Foundation
struct UserCard: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
   @Binding var user:User
    var body: some View {
        
        ZStack(alignment:.center){
            Rectangle()
                .stroke(lineWidth:10)
                .fill(Color("textBox"))
                
                .cornerRadius(5)
            HStack(alignment:.center){
                //Expectativa e vida restante
                VStack(alignment:.leading) {
                    Text("Nome: \(user.name)")
                    Text("Idade: \(user.age) anos")
                    Text("Sexo: \(user.lifeExpectancy.questions[0].answerDescription)")
                    Text("País: \(user.lifeExpectancy.naturality)")
                    Text("Expectativa de vida total: \(user.lifeExpectancy.initialLifeExpectancy) anos.")
                }
                .padding(.leading,6)
                .foregroundStyle(Color("textBox"))
                .font(.title3)
                ZStack{
                    Rectangle()
                        .fill(Color("textBox"))
                        .frame(width:150, height: 180)
                        .cornerRadius(10)
                        .padding(.trailing,10)
                    VStack (spacing:-10){
                        Text("Viva +")
                            .font(.system(size: 25))
                            .padding(.vertical,5)
                        Text(String (user.lifeExpectancy.totalLifeExpectancy-user.age))
                            .font(.system(size: 45))
                        Text("Anos")
                            .font(.system(size: 25))
                            .padding(.vertical,5)
                    }
                }
                .foregroundColor(.white)
            }
        }
        .frame(
            width:350,
            height:200
        )
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
    }
}
//struct Header2_Previews: PreviewProvider{
//   
//   static var previews: some View{
//       UserCard(user: DummyData.user)
//           .environmentObject(ContentViewModel())
//    }
//}
