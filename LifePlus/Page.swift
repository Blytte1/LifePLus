//
//  intro.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI



struct Page: View {

    @EnvironmentObject  var contentViewModel : ContentViewModel
    @State private (set) var user:User
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
    
    @FocusState  var keyboardIsFocused: Bool
    var body: some View {
        
        VStack{
            HStack(alignment:.top){
                //MARK: - IMAGE
                Image(question.questionImageUrl)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 150, height:150)
                // MARK: - QUESTION
                Text(LocalizedStringResource(stringLiteral: question.question))
                    .foregroundColor(Color("textColor"))
                    .fontWeight(.semibold)
                    .lineLimit(3...)
                    .font(.title2)
                    .padding(.bottom,30)
            }
            //MARK: - GENDER
            VStack{
                switch question.tag{
                case 0:
                    
                    ForEach(Gender.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
                  
                    //MARK: - CITY
                case 1:
                    
                    ForEach(City.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
            //MARK: - GRANDPARENTS
                case 2:
                    ForEach(Grandparents.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
                case 3:
                    ForEach(Longevity.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
            //MARK: - HEART
                case 4:
                    ForEach(Heart.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
            //MARK: - CANCER
                case 5:
                    ForEach(Cancer.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
                   
             //MARK: - INCOME
                case 6:
                    ForEach(Income.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
             //MARK: - GRADUATION
                case 7:
                    ForEach(Graduation.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
             //MARK: - WORKOVER65
                case 8:
                    ForEach(Workover65.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
           //MARK: - MARRIED
                case 9:
                    ForEach(Married.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
          //MARK: - LONELY
                case 10:
                    ForEach(Lonely.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
                    
           //MARK: - WORK
                case 11:
                    ForEach(Work.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
        //MARK: - EXERCISE
                case 12:
                    ForEach(Exercise.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
        //MARK: - SLEEPER
                case 13:
                    ForEach(Sleeper.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
         //MARK: - PERSONALITY
                case 14:
                    ForEach(Personality.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
       //MARK: - SPEEDY
                case 15:
                    ForEach(Speedy.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
      //MARK: - ALCOHOLIC
                case 16:
                    ForEach(Alcoholic.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
       //MARK: - SMOKER
                case 17:
                    ForEach(Smoker.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
      //MARK: - OVERWEIGHT
                case 18:
                    ForEach(OverWeight.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.incrementPage()
                            contentViewModel.updateAnswer(question: question)
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
       //MARK: - CHECKUPS
                case 19:
                    ForEach(Checkups.allCases){ item
                        in Button(){
                            answer = item.rawValue
                            description = item.description
                            contentViewModel.updateAnswer(question: question)
                            contentViewModel.path.append(Screen.report(contentViewModel.user))
                        }
                    label: {
                        Text(LocalizedStringKey(item.description))
                            .modifier(PickerView(tag: item.rawValue))
                    }
                    .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Link(destination: URL(string: user.lifeExpectancy.questions[question.tag].recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                        HStack{
                            Image(user.lifeExpectancy.questions[question.tag].recommendationImage)
                                .resizable()
                                .scaledToFit()
                            VStack{
                                Spacer()
                                Text(user.lifeExpectancy.questions[question.tag].recommendationTag).lineLimit(4)
                                    .font(.body)
                                Text(user.lifeExpectancy.questions[question.tag].recommendationPrice)
                                Spacer()
                            }
                        }
                        .frame(width:370, height:100)
                        .background(.red)
                    }
                    .padding(.vertical)
                   
                default:
                   Text("default")
                }
               
            }
         
   
            .environment(\.locale, .init(identifier: contentViewModel.user.language))
        }
        .cornerRadius(20)
        
    }
}

struct Page_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Page(user: DummyData.user, question: DummyData.smoker, answer: DummyData.lonely.answerValue, description: "")
                .environmentObject(ContentViewModel())
                .environment(\.locale,Locale.init(identifier: "es"))
              
        }
    }
}
