//
//  IntroView2.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/04/26.
//
import SwiftUI
import Observation

struct IntroView: View {
    @State var vm : IntroViewModel


    var body: some View {
        VStack {
            if vm.changeView{
                LogoView()
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("textBox"), lineWidth: 2)
                    
                    VStack(alignment: .leading) {
                        Text(vm.displayText)
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundStyle(Color("textColor"))
                            .animation(.none, value: vm.displayText)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 180)
                .padding()

                Image("dr")
                    .resizable()
                    .scaledToFit()
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: 200,
                        alignment: .trailing
                    )
                  //  Spacer()

                Button {
                    withAnimation(.easeIn(duration: 0.3)) {
                        vm.logoRotation += 360
                        vm.logoscale = 1.3
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        vm.dm.navigate(.name(NameViewModel(dm:vm.dm)))
                    }
                } label: {
                    Text("Vamos!")
                        .frame(maxWidth: .infinity)
                        .font(.title)
                }
                .buttonStyle(.borderedProminent)
                .navigationBarBackButtonHidden(true)
                .cornerRadius(10)
                .padding(.horizontal)
                

            
                    .onAppear {
                        vm.startTyping()
                    }
            }
            else{
            
                
                LanguageSelectView(
                    vm: IntroViewModel(
                        dm: DataManager(
                            user: vm.dm.user,
                            language: vm.dm.language,
                            router: vm.dm.router
                        )
                    )
                )
                .padding()
                Spacer()
                Button{
                    vm.changeView.toggle()
                }label: {
                    Text("ok")
                        .frame(maxWidth: .infinity)
                        .font(.title)
                }
                .buttonStyle(.borderedProminent)
                .navigationBarBackButtonHidden(true)
                .cornerRadius(10)
                .padding(30)
            }
        }
    }
}
#Preview {
    IntroView(vm: IntroViewModel(dm:DummyData.dm))
}
