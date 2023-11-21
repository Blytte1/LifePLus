
//  Page.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.


import SwiftUI
//import GoogleMobileAds


struct Page: View {

    @EnvironmentObject  var contentViewModel : ContentViewModel
    @State private (set) var user:User
    @State private(set) var question:Question
    @State private(set) var answer: Double
    @State private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    
    @FocusState  var keyboardIsFocused: Bool
    var body: some View {
        
        VStack{
            VStack(){
                //MARK: - IMAGE
                Image(question.questionImageUrl)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 350, height:250)
                // MARK: - QUESTION Text
                Text(LocalizedStringResource(stringLiteral: question.question))
                    .foregroundColor(Color("textColor"))
                    .fontWeight(.semibold)
                    .lineLimit(3...)
                    .font(.title3)
            }
            .padding(5)
            .shadow(radius: 10)
            ScrollView{
              
                switch question.tag{

                case 0:
                    GenderView(user: $user, question: $question, answer: $answer, description: $description)
                    Spacer()
                case 1:
                CityView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - GRANDPARENTS
                case 2:
                    GrandParentsView(user: $user, question: $question, answer: $answer, description: $description)
                case 3:
                    LongevityView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - HEART
                case 4:
                    HeartView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - CANCER
                case 5:
                    CancerView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - INCOME
                case 6:
                    IncomeView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - GRADUATION
                case 7:
                   GraduationView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - WORKOVER65
                case 8:
                    WorkOver65View(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - MARRIAGE
                case 9:
                    MarriageView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - LONELY
                case 10:
                LonelyView(user: $user, question: $question, answer: $answer, description: $description)
                case 11:
                    //MARK: - WORK
               WorkView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - SEATEDWORK
                case 12:
                    SeatedWorkView(user: $user, question: $question, answer: $answer, description: $description)

                    //MARK: - SLEEPY
                case 13:
                    SleepyView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - PERSONALITY
                case 14:
                   PersonalityView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - SPEEDY
                case 15:
                    SpeedyView(user: $user, question: $question, answer: $answer, description: $description)
            
                    //MARK: - ALCOHOLIC
                case 16:
                    AlcoholicView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - SMOKER
                case 17:
                  SmokerView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - OVERWEIGHT
                case 18:
                    OverWeightView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - CHECKUPS
                case 19:
                    CheckupsView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - PEDESTRIAN
                case 20:
                    PedestrianView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - SEATBELT
                case 21:
                    SeatBeltView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - SWIM
                case 22:
                    SwimView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - CAMPING
                case 23:
                    CampingView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - PHISICAL
                case 24:
                    PhisicalView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - BIKE
                case 25:
                    BikeView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - HUNT
                case 26:
                    HuntView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - AIRPLANE
                case 27:
                    AirPlaneView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - NIGHT
                case 28:
                   NightView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - SPORTS
                case 29:
                    SportsView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - DIET
                case 30:
                    DietView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - EXTREME
                case 31:
                    ExtremeView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - HOMEPERSON
                case 32:
                    HomePersonView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - TEXTING
                case 33:
                    TextingView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - WALKER
                case 34:
                    TextingView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - CRACK
                case 35:
                    CrackView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - HOUSE
                case 36:
                    HouseView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - CHEER
                case 37:
                    CheerView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - DANGER
                case 38:
                    HouseView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - LIGHTS
                case 39:
                    LightsView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - HOSPITAL
                case 40:
                    HospitalView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - SPIRITUAL
                case 41:
                    SpiritualView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - CRIME
                case 42:
                    CrimeView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - FIREARM
                case 43:
                    FireArmView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - PUB
                case 44:
                    PubView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - FIGHT
                case 45:
                    FightView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - MEDICATION
                case 46:
                    MedicationView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - SECURITY
                case 47:
                    SecurityView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - HITCHHIKE
                case 48:
                    HitchHikeView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - DRUGS
                case 49:
                    DrugsView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - DISPUTE
                case 50:
                    DisputeView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - FLOOD
                case 51:
                    FloodView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - TRAVEL
                case 52:
                    HospitalView(user: $user, question: $question, answer: $answer, description: $description)
                    //MARK: - EXERCISE
                case 53:
                    ExerciseView(user: $user, question: $question, answer: $answer, description: $description)
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
            Page(user: DummyData.user, question: DummyData.phisical, answer: DummyData.lonely.answerValue, description: "")
                .environmentObject(ContentViewModel())
                .environment(\.locale,Locale.init(identifier: "pt-BR"))
        }
    }
}

struct GenderView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Gender.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct CityView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(City.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct GrandParentsView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Grandparents.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct LongevityView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Longevity.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct HeartView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Heart.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct CancerView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Cancer.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct IncomeView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Income.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct GraduationView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Graduation.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct WorkOver65View: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Workover65.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct MarriageView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Marriage.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct LonelyView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Lonely.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
    }
}
struct WorkView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Work.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SeatedWorkView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(SeatedWork.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SleepyView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Sleepy.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct PersonalityView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Exercise.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SpeedyView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Speedy.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct AlcoholicView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Alcoholic.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SmokerView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Smoker.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct OverWeightView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(OverWeight.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct CheckupsView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Checkups.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct PedestrianView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Pedestrian.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SeatBeltView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(SeatBelt.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SwimView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Swim.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct CampingView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Camping.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct PhisicalView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Phisical.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct BikeView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Bike.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct HuntView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Hunt.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct AirPlaneView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(AirPlane.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct NightView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Night.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SportsView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Sports.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct DietView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Diet.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct ExtremeView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Extreme.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct HomePersonView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(HomePerson.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct TextingView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Texting.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct WalkerView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Walker.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct CrackView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Crack.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct HouseView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(House.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct CheerView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Cheer.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct DangerView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Danger.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct LightsView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Lights.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct HospitalView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Hospital.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SpiritualView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Spiritual.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct CrimeView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Crime.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct FireArmView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(FireArm.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct PubView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Pub.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct FightView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Fight.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct MedicationView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Medication.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct SecurityView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Security.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct HitchHikeView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(HitchHike.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct DrugsView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Drugs.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct DisputeView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Dispute.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct FloodView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Flood.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct TravelView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Travel.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
                
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
struct ExerciseView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Exercise.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.updateAnswer(question: question)
                contentViewModel.path = [Screen.report(user)]
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        //AdBannerView(adUnitID: question.recommendationLink)
        //.padding(.vertical)
    }
}
