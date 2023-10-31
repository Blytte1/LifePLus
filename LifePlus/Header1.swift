//
//  Header.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 03/10/23.
//
//import SwiftUI
//import Foundation
//struct Header1: View {
//   
//    @State var rotation = 0.0
//    var body: some View {
//        
//      
//        ZStack(alignment:.trailing){
//            Rectangle()
//                .stroke(lineWidth:10)
//                .fill(Color("textBox"))
//            
//            HStack {
////Expectativa e vida restante
//                VStack (alignment:.center, spacing:0){
//                   
//                        Text("Viva +")
//                        .foregroundStyle(Color("textBox"))
//                            .font(.system(size: 60))
//                            .fontWeight(.black)
//                            .padding(2)
//                    
//                }
//               
////MARK: Numero de anos
//                ZStack{
//                    Rectangle()
//                        .fill(Color("textBox"))
//                        .frame(width:130, height: 110)
//                        .cornerRadius(10)
//                        .padding(.horizontal,10)
//                    
//                    VStack (spacing:-10){
//                        Text( "\(age)")
//                            .font(.system(size: 60))
//                        Text("Anos")
//                            .font(.system(size: 30))
//                    }
//                    .foregroundStyle(.white)
//                    .rotation3DEffect(
//                        Angle(degrees: rotation),
//                        axis: (x:0,y:1,z:0))
//                }
//               
//                //rotação do placar de anos
//                .rotation3DEffect(
//                    .degrees(rotation),
//                    axis: (x:0,y:1,z:0)
//                )
//                
//                .animation(
//                    .easeIn(duration: 0.5),
//                    value: rotation
//                )
//            }
//            .rotation3DEffect(
//                .degrees(-360),
//                axis: (1, 0,0)
//            )
//            .animation(
//                .easeInOut(duration: 0.5)
//                , value:age
//            )
//            .foregroundColor(.accentColor)
//        }
//        .animation(
//            .easeInOut(duration: 1),
//            value: age
//        )
//        .frame(
//           
//               maxWidth:.infinity
//               , maxHeight:140
//        )
//        
//        .cornerRadius(10)
//        .padding(.bottom,10)
//        .padding(.horizontal)
//        .shadow(radius: 20)
//    }
//}
//struct Header_Previews: PreviewProvider{
//   
//   static var previews: some View{
//       Header1()
//           .environmentObject(ContentViewModel())
//    }
//}
