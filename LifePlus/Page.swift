//
//  intro.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI


struct Page: View {

    @EnvironmentObject  var contentViewModel : ContentViewModel
    @State private(set) var question:Question
    @State private(set) var answer:Int{
        didSet{
            contentViewModel.answer = answer
        }
    }
    @State private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    @State var age:Int{
        didSet{
            contentViewModel.user.age = age
        }
    }
    @FocusState  var keyboardIsFocused: Bool
    var body: some View {
        
        ScrollView{
            
            //MARK: - IMAGE
            Image(question.questionImageUrl)
                .resizable()
                .cornerRadius(10)
                .padding(5)
                .frame(width:360,height: 250)
            // MARK: - QUESTION
            VStack{
                Text(question.question)
                    .foregroundColor(.accentColor)
                    .fontWeight(.semibold)
                    .lineLimit(3...)
                    .font(.title3)
                    .frame(width:360)
                //MARK: - PAGES
                VStack{
                    
                    switch question.tag{
                //MARK: - AGE
                    case 0:
                        VStack{
                        Text(String(age))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            Stepper("",value: $age, in:0...100)
                                .labelsHidden()
                                .padding(5)
                                .cornerRadius(10)
                            Button(){
                                answer = age < 30 ? 0:  age >= 30 && age <= 50 ? 2:4
                                description = String(age) + " Anos."
                                contentViewModel.incrementPage()
                                contentViewModel.user.age = age
                                contentViewModel.updateAnswer(question: question)
                                    contentViewModel.ageUpdated.toggle()
                            }label:{
                                Text("Confirma")
                                    .foregroundColor(.white)
                                    .fontWeight(.heavy)
                                    .padding(.vertical,3)
                                    .frame(minWidth: 250,maxWidth: 350, alignment: .center)
                                    .cornerRadius(20)
                                    .padding(.vertical,2)
                            }
                            .buttonStyle(.borderedProminent)
                            
                        }
                //MARK: - GENDER
                    case 1:
                        
                        ForEach(Gender.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                //MARK: - CITY
                    case 2:
                        ForEach(City.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                //MARK: - GRANDPARENTS
                    case 3:
                        ForEach(Grandparents.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                //MARK: - LONGEVITY
                    case 4:
                        ForEach(Longevity.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                //MARK: - HEART
                    case 5:
                        ForEach(Heart.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                //MARK: - CANCER
                    case 6:
                        ForEach(Cancer.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                 //MARK: - INCOME
                    case 7:
                        ForEach(Income.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                 //MARK: - GRADUATION
                    case 8:
                        ForEach(Graduation.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                 //MARK: - WORKOVER65
                    case 9:
                        ForEach(Workover65.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
               //MARK: - MARRIED
                    case 10:
                        ForEach(Married.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
              //MARK: - LONELY
                    case 11:
                        ForEach(Lonely.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                        .padding(.top,-1)
               //MARK: - WORK
                    case 12:
                        ForEach(Work.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
            //MARK: - EXERCISE
                    case 13:
                        ForEach(Exercise.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
            //MARK: - SLEEPER
                    case 14:
                        ForEach(Sleeper.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
             //MARK: - PERSONALITY
                    case 15:
                        ForEach(Personality.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
           //MARK: - SPEEDY
                    case 16:
                        ForEach(Speedy.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
          //MARK: - ALCOHOLIC
                    case 17:
                        ForEach(Alcoholic.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
           //MARK: - SMOKER
                    case 18:
                        ForEach(Smoker.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
          //MARK: - OVERWEIGHT
                    case 19:
                        ForEach(OverWeight.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.incrementPage()
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
           //MARK: - CHECKUPS
                    case 20:
                        ForEach(Checkups.allCases){ item
                            in Button(){
                                answer = item.rawValue
                                description = item.description
                                contentViewModel.path.append(Screen.report(contentViewModel.user))
                                contentViewModel.updateAnswer(question: question)
                            }
                        label: {
                            Text(item.description)
                                .modifier(PickerView(tag: item.rawValue))
                        }
                        .buttonStyle(.borderedProminent)
                        }
                        .padding(.horizontal)
                    default:
                       Text("default")
                    }
                }
            }
            .toolbar{
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Pronto"){
                        keyboardIsFocused = false
                        answer = age < 30 ? 0:  age >= 30 && age <= 50 ? 2:4
                        description = String(age) + " Anos"
                        contentViewModel.incrementPage()
                        contentViewModel.updateAnswer(question: question)
                    }
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .cornerRadius(20)
    }
}

struct Page_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Page(question: DummyData.age, answer: DummyData.lonely.answerValue, description: "", age: DummyData.user.age)
                .environmentObject(ContentViewModel())
                .padding(30)
        }
    }
}
