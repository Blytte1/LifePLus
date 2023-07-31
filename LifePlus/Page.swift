//
//  intro.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI


struct Page: View {
    @EnvironmentObject var contentViewModel : ContentViewModel
    let sequence = [1,2,3,4,5,6,7,8,9,10]
  
    var question:Question
    
  @State  var answer:Int{
        didSet{
            contentViewModel.answer = answer
        }
    }
    @State var isSelected:Bool{
        didSet{
            contentViewModel.isSelected = isSelected
        }
    }
    
    var body: some View {

        VStack (alignment:.center,spacing: 5){

         //MARK: - IMAGE
            Image(question.imageUrl)
                .resizable()
                .scaledToFill()
                .cornerRadius(10)
                .frame(width:320,height: 250)
                .padding(10)
            // MARK: - QUESTION
            VStack(alignment:.center,spacing:0){
                Text(question.question)
                    .foregroundColor(.accentColor)
                    .fontWeight(.semibold)
                    .lineLimit(3...)
                    .font(.title3)
                    .padding(.top)
                VStack(alignment:.leading){
                    
                        switch question.tag{
                        case 0:
                            ForEach(Age.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 1:
                
                            ForEach(Gender.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 2:
                            ForEach(City.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 3:
                            ForEach(Grandparents.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 4:
                            ForEach(Longevity.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 5:
                            ForEach(Heart.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 6:
                            ForEach(Cancer.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 8:
                            ForEach(Graduation.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 9:
                            ForEach(Workover65.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 10:
                            ForEach(Married.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 11:
                            ForEach(Lonely.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 12:
                            ForEach(Work.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 13:
                            ForEach(Exercise.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 14:
                            ForEach(Sleeper.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 15:
                            ForEach(Personality.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 16:
                            ForEach(Speedy.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 17:
                            ForEach(Alcoholic.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 18:
                            ForEach(Smoker.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 19:
                            ForEach(OverWeight.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        case 20:
                            ForEach(Checkups.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        default:
                            ForEach(Age.allCases){ item
                                in Button(){
                                    answer = item.rawValue
                                    isSelected = true
                                    question == contentViewModel.lifeExpectancy.questions.last ? contentViewModel.startOver():contentViewModel.incrementPage()
                                    contentViewModel.updateAnswer(question: question)
                                    print(question.question)
                                    print(contentViewModel.answer)
                                }
                            label: {
                                    Text(item.description)
                                    .modifier(PickerView(tag: item.rawValue))
                            }
                            .buttonStyle(.borderedProminent)
                                }
                        }
                    }
                 .frame(width:350, height:100, alignment:.leading)
                    
            }
         Spacer()
        }
    }
}

struct Page_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Page(question: DummyData.age, answer: DummyData.age.answer, isSelected: false)
                .environmentObject(ContentViewModel())
                .padding(30)
        }
    }
}
