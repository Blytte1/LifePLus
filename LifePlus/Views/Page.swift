
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
                    .foregroundColor(Color("textBox"))
                    .fontWeight(.bold)
                    .lineLimit(3...)
                    .font(.title3)
            }
            .padding(5)
            .shadow(radius: 10)
            ScrollView{
              
                switch question.tag{

                case 0:
                    SexView(user: $user, question: $question, answer: $answer, description: $description)
                   
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
                    TravelView(user: $user, question: $question, answer: $answer, description: $description)
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
                    //MARK: - WAR
                case 52:
                    WarView(user: $user, question: $question, answer: $answer, description: $description)
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
              
        }
    }
}
