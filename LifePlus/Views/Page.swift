
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
                   

                    //MARK: - GRANDPARENTS
                case 1:
                    GrandParentsView(user: $user, question: $question, answer: $answer, description: $description)

                    //MARK: - LONGEVITY
                case 2:
                    LongevityView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - HEART
                case 3:
                    HeartView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - CANCER
                case 4:
                    CancerView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - CHECKUPS
                case 5:
                    CheckupsView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - MEDICATION
                case 6:
                    MedicationView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - ALCOHOLIC
                case 7:
                    AlcoholicView(user: $user, question: $question, answer: $answer, description: $description)

                    //MARK: - SMOKER
                case 8:
                    SmokerView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - DRUGS
                case 9:
                    DrugsView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - PHISICAL
                case 10:
                    PhisicalView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - EXERCISE
                case 11:
                    ExerciseView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - DIET
                case 12:
                    DietView(user: $user, question: $question, answer: $answer, description: $description)

                    //MARK: - SPORTS
                case 13:
                    SportsView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - EXTREME
                case 14:
                    ExtremeView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - SWIM
                case 15:
                    SwimView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - CAMPING
                case 16:
                    CampingView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - HUNT
                case 17:
                    HuntView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - SEATEDWORK
                case 18:
                    SeatedWorkView(user: $user, question: $question, answer: $answer, description: $description)


                    //MARK: - HOMEPERSON
                case 19:
                    HomePersonView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - SLEEPY
                case 20:
                    SleepyView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - PERSONALITY
                case 21:
                   PersonalityView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - SPIRITUAL
                case 22:
                    SpiritualView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - NIGHT
                case 23:
                   NightView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - SEATBELT
                case 24:
                    SeatBeltView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - SPEEDY
                case 25:
                    SpeedyView(user: $user, question: $question, answer: $answer, description: $description)
                    
                //MARK: - TRAVEL
                case 26:
                    TravelView(user: $user, question: $question, answer: $answer, description: $description)

                    //MARK: - BIKE
                case 27:
                    BikeView(user: $user, question: $question, answer: $answer, description: $description)

                    //MARK: - HITCHHIKER
                case 28:
                    HitchHikeView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - PEDESTRIAN
                case 29:
                    PedestrianView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - AIRPLANE
                case 30:
                    AirPlaneView(user: $user, question: $question, answer: $answer, description: $description)

                    //MARK: - TEXTING
                case 31:
                    TextingView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - SIDEWALKER
                case 32:
                    TextingView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - DISPUTE
                case 33:
                    DisputeView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - CHEER
                case 34:
                    CheerView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - GRADUATION
                case 35:
                    GraduationView(user: $user, question: $question, answer: $answer, description: $description)

                    //MARK: - INCOME
                case 36:
                    IncomeView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - WAR
                case 37:
                    WarView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - CITY
                case 38:
                    CityView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - FLOOD
                case 39:
                    FloodView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - HOUSE
                case 40:
                    HouseView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - SECURITY
                case 41:
                    SecurityView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - DANGER
                case 42:
                    HouseView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - LIGHTS
                case 43:
                    LightsView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - CRIME
                case 44:
                    CrimeView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - PUB
                case 45:
                    PubView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - FIGHT
                case 46:
                    FightView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - FIREARM
                case 47:
                    FireArmView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - HOSPITAL
                case 48:
                    HospitalView(user: $user, question: $question, answer: $answer, description: $description)
                    
           
                    //MARK: - MARRIAGE
                case 49:
                    MarriageView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - LONELY
                case 50:
                LonelyView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - WORK
                case 51:
               WorkView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - CRACK
                case 52:
                    CrackView(user: $user, question: $question, answer: $answer, description: $description)
                    
                    //MARK: - OVERWEIGHT
                case 53:
                    OverWeightView(user: $user, question: $question, answer: $answer, description: $description)
                default:
                    Text("Erro, página ausente")
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
