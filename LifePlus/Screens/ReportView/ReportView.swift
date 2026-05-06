//
//  ReportView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 20/06/23.
//

import SwiftUI


struct ReportView: View {
    @State var vm: ReportViewModel

    var body: some View {
        
        ScrollView {
            ReactionView(vm:vm.dm,answerValue: vm.dm.user.finalLifeExpectancy)
                .clipShape(.circle)
            VStack{
                //MARK: - Numero de anos

                VStack{
                    Text("Expectativa de vida:")
                    Text(vm.user.finalLifeExpectancy.description)
                    Text("anos")
                }
                    .font(.title)
                    .foregroundStyle(Color("textColor"))
                    .bold()

                VStack(alignment: .leading){
                    if (vm.user.finalLifeExpectancy) > vm.user.lifeExpectancy.initialLifeExpectancy{
                        Text(
                            "Parabéns, você superou a expectativa de vida média do seu país!"
                        )
                    } else if (vm.user.finalLifeExpectancy) == vm.user.lifeExpectancy.initialLifeExpectancy{
                        Text(
                            "Parabéns, você está dentro da média de expectativa de vida para \(vm.user.lifeExpectancy.nationality)."
                        )
                    }
                    else if (vm.user.finalLifeExpectancy) < vm.user.age && vm.user.age <= vm.user.lifeExpectancy.initialLifeExpectancy{

                        Text(
                            "ATENÇÃO: Sua expectativa de vida é negativa! No entanto,embora a expectativa de vida não seja fator determinante para sua saúde, ainda serve como uma referência para avaliar seus hábitos de vida. Como você está abaixo da média, sugerimos que procure ajuda profissional e considere tomar algumas mudanças significativas em seu estilo de vida o quanto antes."
                        )
                        .minimumScaleFactor(0.6)
                        .lineLimit(7, reservesSpace: true)
                    }
                    else{
                        Text(
                            "Atenção: você está abaixo da média da população do seu país, procure ajuda profissional e considere rever seus hábitos urgentemente!"
                        )
                        .foregroundStyle(.red)
                    }
                }


                .foregroundStyle(Color("textColor"))
                .font(.title2)
                .bold()
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
                VStack(alignment:.leading){
                    HStack {
                        Text("Nome:  \(vm.user.name)")
                    }
                    HStack {
                        Text("Idade:")
                        Text(vm.user.age,format: .number.locale(.current))
                        Text("anos")
                    }
                    HStack {
                        Text("Sexo:")
                        Text(
                            LocalizedStringKey(
                                vm.user.sex.rawValue
                            )
                        )
                    }
                    HStack {
                        Text("Nacionalidade:")
                        Text(
                            LocalizedStringKey(
                                vm.user.lifeExpectancy.nationality
                            )
                        )
                    }

                    HStack {
                        Text("Expectativa de vida do país:")
                        Text(
                            vm.user.lifeExpectancy.initialLifeExpectancy,
                            format: .number.locale(.current)
                        )
                        Text("anos")
                    }
                }
                .foregroundStyle(.white)
                .font(.title3)
                .frame(maxHeight:150, alignment: .leading)
                .padding(10)
                .background(Color("textBox"))
                .cornerRadius(15)
            }

            .environment(\.locale, .init(identifier:vm.dm.language))

            .padding(.bottom,30)

            Button{
                vm.showAnswers()
            }label:{
                Text("Relatório completo")
                    .foregroundStyle(.white)
                    .font(.title2)
                    .bold()
                    .padding(25)
                    .background(Color("textBox"))
                    .cornerRadius(15)
            }
            .padding(.bottom)
            .onAppear(){
               vm.getUser()
            }
        }
        .toolbar{
            Button{
                vm.restart()
            }label:{
                Image(systemName: "arrow.counterclockwise.circle")
            }

            
            Button{
                vm.goToSetup()
            }label:{
                Image(systemName: "character.book.closed")
            }
        }
        

        .environment(\.locale, .init(identifier: vm.dm.language))
        .navigationBarBackButtonHidden(true)
    }
}
struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ReportView(vm:ReportViewModel(dm: DummyData.dm))
                .environment(DummyData.dm)
        }
    }
}


