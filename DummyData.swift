//
//  Questions.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.


import SwiftUI

struct DummyData{
    
    static var user: User = User(
        lifeExpectancy: DummyData.lifeExpectancy,
        age:35,
        language: "pt-BR"
    )
    static var lifeExpectancy = LifeExpectancy(
        questions: questions,
        naturality: "Brasil 🇧🇷",
        totalLifeExpectancy:0
    )
    //MARK: - QUESTIONS
    
    static var questions:[Question] = [
        sex, grandParents, longevity, heart,
        cancer, checkups, medication, alcoholic,
        smoker, drugs, phisical, exercise, diet,
        sports, extreme, swim, camping,hunt,
        seatedWork, homePerson, sleepy,personality,
        spiritual, night,   seatbelt, speedy,
        travel, bike, hitchHiker, pedestrian,
        airplane, texting, sidewalker, dispute,
        cheer, graduation, income, war, 
        city, flood, house, security,
        danger, lights, crime, pub,
        fight, fireArm, hospital, marriage,
        lonely, work, crack, overwheight
    ]
    
    static var sex = Question(
        question:"Qual seu sexo?",
        answerValue: -3,
        answerDescription: "Masculino",
        questionImageUrl: "gender",
        tag: 0,
        categories: .biologic,
        recommendationLink: "ca-app-pub-2392051947290105/4651890018"
    )
    static  var grandParents = Question(
        question: "Ao menos um de seus avós viveu acima de 85 anos?",
        answerValue: 2,
        answerDescription: "Sim",
        questionImageUrl: "grandparents",
        tag: 1,
        categories: .biologic,
        recommendationLink: "ca-app-pub-2392051947290105/3963578587"
    )
    static  var longevity = Question(
        question:"Todos os seus avós viveram acima de 80 anos?",
        answerValue: 6,
        answerDescription: "Sim",
        questionImageUrl: "longevity",
        tag: 2, categories: .biologic,
        recommendationLink: "ca-app-pub-2392051947290105/1031375059"
    )
    static  var heart = Question(
        question: "Algum parente próximo seu morreu devido a doença cardiovascular antes dos 50 anos de idade?",
        answerValue: -4,
        answerDescription: "Sim",
        questionImageUrl: "heart",
        tag: 3,
        categories: .biologic,
        recommendationLink: "ca-app-pub-2392051947290105/1337415249"
    )
    static  var cancer = Question(
        question: "Entre você, seus pais ou irmãos houve algum caso de câncer, diabetes tipo 1 ou doença do coração?",
        answerValue: -3,
        answerDescription: "Sim",
        questionImageUrl: "cancer",
        tag: 4,
        categories: .biologic,
        recommendationLink: "ca-app-pub-2392051947290105/6734331710"
    )
    //MARK: - HABITS
    
    static  var checkups = Question(
        question: "Você faz check-ups médicos anualmente?",
        answerValue: 0,
        answerDescription: "Não",
        questionImageUrl: "checkup",
        tag: 5,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/7372625961"
    )
    static var medication = Question(
        question: "Você toma medicações prescritas pelo médico, conforme indicado?",
        answerValue: -1,
        answerDescription: "Sim",
        questionImageUrl: "medication",
        tag: 6,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/1105087746"
    )
    static  var alcoholic = Question(
        question: "Você bebe pelo menos o equivalente a uma dose de bebida alcoólica por dia?",
        answerValue: 0,
        answerDescription: "Não",
        questionImageUrl: "alcoholic",
        tag: 7,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/7716240899"
    )
    static  var smoker = Question(
        question: "Você fuma?",answerValue: -3,
        answerDescription: "Sim, de meio a um maço por dia",
        questionImageUrl: "smoker",
        tag: 8,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/2463914215"
    )
    static var drugs = Question(
        question: "Você consome algum tipo de droga ilícita?",
        answerValue: 0.25,
        answerDescription: "Sim",
        questionImageUrl: "drugs",
        tag: 9,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/6765690107"
    )
    static var phisical = Question(
        question: "Você teria capacidade de correr ou descer escadas em caso de emergência?",
        answerValue: 2,
        answerDescription: "Sim",
        questionImageUrl: "phisical",
        tag: 10,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/8510888750"
    )
    static  var exercise = Question(
        question: "Costuma exercitar-se com qual frequência?",
        answerValue: 2,
        answerDescription: "Sim, três vezes por semana.",
        questionImageUrl: "exercise",
        tag: 11,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/5975783810"
    )
    static var diet = Question(
        question: "Sua dieta é assistida por algum profissional especializado?",
        answerValue: 3,
        answerDescription: "Sim",
        questionImageUrl: "diet",
        tag: 12,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/6358495998"
    )
    static var sports = Question(
        question: "Você pratica esportes de contato?",
        answerValue: -0.25,
        answerDescription: "Sim",
        questionImageUrl: "sports",
        tag: 13,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/5416949419"
    )
    static var extreme = Question(
        question: "Pratica esportes radicais como canoagem, paraquedismo ou motocross?",
        answerValue: -1,
        answerDescription: "Sim",
        questionImageUrl: "extreme",
        tag: 14,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/5045414325"
    )
    static var swim = Question(
        question: "Sabe nadar?",
        answerValue: 2,
        answerDescription: "Sim",
        questionImageUrl: "swim",
        tag: 15,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/5975783810"
    )
    static var camping = Question(
        question: "Tem alguma habilidade com acampamentos?",
        answerValue: 1,
        answerDescription: "Sim",
        questionImageUrl: "camping",
        tag: 16,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/7389378772"
    )
    static var hunt = Question(
        question: "Sabe caçar?",
        answerValue: 1.5,
        answerDescription: "Sim",
        questionImageUrl: "hunt",
        tag: 17,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/3592731855"
    )
    static var seatedWork = Question(
        question: "Passa muitas horas sentado?",
        answerValue: -3,
        answerDescription: "Sim",
        questionImageUrl: "seatedWork",
        tag: 18,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/6980230953"
    )
    static var homePerson = Question(
        question: "Você se considera uma pessoa caseira?",
        answerValue: 2,
        answerDescription: "Sim",
        questionImageUrl: "homePerson",
        tag: 19,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/3278743370"
    )
    static  var sleepy = Question(
        question: "Você dorme mais de 10 horas por dia?",
        answerValue: -4,
        answerDescription: "Sim",
        questionImageUrl: "sleepy",
        tag: 20,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/7201235571"
    )
    static  var personality = Question(
        question: "Em termos de personalidade, como você se considera?",
        answerValue: -3,
        answerDescription: "Intenso",
        questionImageUrl: "personality",
        tag: 21,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/1948908897"
    )
    static var spiritual = Question(
        question: "Você pratica alguma atividade de cunho espiritual?",
        answerValue: 2.5,
        answerDescription: "Sim",
        questionImageUrl: "spiritual",
        tag: 22,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/1296659434"
    )
    static var night = Question(
        question: "Costuma transitar por grandes centros no período noturno?",
        answerValue: -1.5,
        answerDescription: "Sim",
        questionImageUrl: "night",
        tag: 23,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/3450133763"
    )
    static var seatbelt = Question(
        question: "Usa o cinto de segurança enquanto dirige?",
        answerValue: 1,
        answerDescription: "Sim",
        questionImageUrl: "seatbelt",
        tag: 24,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/7531976867"
    )
    static  var speedy = Question(
        question: "Você recebeu alguma multa por dirigir em alta velocidade no último ano?",
        answerValue: -1,
        answerDescription: "Não",
        questionImageUrl: "speedy",
        tag: 25,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/4798433515"
    )
    static var travel = Question(
        question: "Dirige por rodovias com frequência?",
        answerValue: -1,
        answerDescription: "Sim",
        questionImageUrl: "travel",
        tag: 26,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/6980230953"
    )
    static var bike  = Question(
        question: "Anda de bicicleta em vias onde transitam carros?",
        answerValue: -2,
        answerDescription: "Sim",
        questionImageUrl: "bike",
        tag: 27,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/8510888750"
    )
    static var hitchHiker = Question(
        question: "Você pega carona com estranhos ou dá carona para estranhos?",
        answerValue: -1.25,
        answerDescription: "Sim",
        questionImageUrl: "hitchhike",
        tag: 28,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/6165842739"
    )
    static var pedestrian = Question(
        question: "No seu dia a dia, você atravessa vias públicas na faixa de pedestres?",
        answerValue: 2,
        answerDescription: "Sim",
        questionImageUrl: "pedestrian",
        tag: 29,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/3046809085"
    )
    static var airplane = Question(
        question: "Costuma viajar em aviões pequenos?",
        answerValue:-0.25,
        answerDescription: "Sim",
        questionImageUrl: "airplane",
        tag: 30,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/4763215432"
    )
    static var texting = Question(
        question: "Digita mensagens no celular enquanto dirige?",
        answerValue: -3,
        answerDescription: "Sim",
        questionImageUrl: "texting",
        tag: 31,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/2178496269"
    )
    static var sidewalker = Question(
        question: "Você costuma caminhar perto de carros em movimento?",
        answerValue: -0.5,
        answerDescription: "Sim",
        questionImageUrl: "walker",
        tag: 32,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/5235904445"
    )
    static var dispute = Question(
        question: "Você tem alguma rixa com algum vizinho ou com algum colega de trabalho?",
        answerValue: -1.5,
        answerDescription: "Sim",
        questionImageUrl: "dispute",
        tag: 33,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/1919475965"
    )
    static var cheer = Question(
        question: "Participa de alguma torcida organizada?",
        answerValue: -2,
        answerDescription: "Sim",
        questionImageUrl: "cheer",
        tag: 34,
        categories: .habit,
        recommendationLink: "ca-app-pub-2392051947290105/2090866357"
    )
    //MARK: - DEMOGRAFIC
    
    static  var graduation = Question(
        question: "Qual sua formação acadêmica?",
        answerValue: 2,
        answerDescription: "Nivel Superior",
        questionImageUrl: "graduation",
        tag: 35,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/3341881610"
    )
    static  var income = Question(
        question: "Você recebe o equivalente a 10 ou mais salários mínimos ao mês?",
        answerValue: 0,
        answerDescription: "Não",
        questionImageUrl: "income",
        tag: 36,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/8298694826"
    )
    static  var war = Question(
        question: "Seu país está enfrentando algum conflito armado no momento?",
        answerValue: -10,
        answerDescription: "Sim, três vezes por semana.",
        questionImageUrl: "war",
        tag: 37,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/5975783810"
    )
    static  var city = Question(
        question: "Qual a população aproximada da cidade onde você vive?",
        answerValue: 0,
        answerDescription: "De 10 mil a 2 milhões de pessoas",
        questionImageUrl: "city",
        tag: 38,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/2853321673"
    )
    static var flood = Question(
        question: "O local da sua residência corre risco de inundações?",
        answerValue: -3,
        answerDescription: "Sim",
        questionImageUrl: "flood",
        tag: 39,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/9440827043"
    )
     static var house = Question(
         question: "Mora em condomínio fechado?",
         answerValue: 2,
         answerDescription: "Sim",
         questionImageUrl: "house",
         tag: 40,
         categories: .demografic,
         recommendationLink: "ca-app-pub-2392051947290105/6319839687"
     )
    static var security = Question(
        question: "Em sua residência há câmeras de segurança, ou serviços de vigilância?",
        answerValue: 2
        , answerDescription: "Sim",
        questionImageUrl: "security",
        tag: 41,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/4894205236"
    )
    static var danger = Question(
        question: "Você mora em um bairro considerado perigoso?",
        answerValue: -2,
        answerDescription: "Sim",
        questionImageUrl: "danger",
        tag: 42,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/3922822771"
    )
     static var lights = Question(
         question: "As vias perto de sua casa ou do trabalho são mal iluminadas?",
         answerValue: -1,
         answerDescription: "Sim",
         questionImageUrl: "lights",
         tag: 43,
         categories: .demografic,
         recommendationLink: "ca-app-pub-2392051947290105/3772695258"
     )
  
    static var crime = Question(
        question: "Algum parente seu está ou já foi envolvido em algum crime?",
        answerValue: -1,
        answerDescription: "Sim",
        questionImageUrl: "crime",
        tag: 44,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/9583425137"
    )
    static var pub = Question(
        question: "Você frequenta bares ou boates regularmente?",
        answerValue: -0.5,
        answerDescription: "Sim",
        questionImageUrl: "pub",
        tag: 45,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/6398858596"
    )
    static var fight = Question(
        question: "Você costuma se envolver em brigas?",
        answerValue: -5,
        answerDescription: "Sim",
        questionImageUrl: "fight",
        tag: 46,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/5236986011"
    )
    static var fireArm = Question(
        question: "Sua atividade profissional exige o porte de armas de fogo?",
        answerValue: -3,
        answerDescription: "Sim",
        questionImageUrl: "fireArm",
        tag: 47,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/4717029697"
    )
   static var hospital = Question(
         question: "Você mora próximo a um hospital?",
         answerValue: 2,
         answerDescription: "Sim",
         questionImageUrl: "hospital",
         tag: 48,
         categories: .demografic,
         recommendationLink: "ca-app-pub-2392051947290105/3300006248"
     )
    static  var marriage = Question(
        question: "Você mora com seu cônjuge ou com um companheiro?",
        answerValue: 5,
        answerDescription: "Sim",
        questionImageUrl: "marriage",
        tag: 49,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/7907812580"
    )
    static  var lonely = Question(
        question: "Morou sozinho por pelo menos uma década desde seus 25 anos?",
        answerValue: 0,
        answerDescription: "Não",
        questionImageUrl: "lonely",
        tag: 50,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/3541192167"
    )
    static  var work = Question(
        question: "Exerce algum trabalho pesado?",
        answerValue:  -3,
        answerDescription: "Sim",
        questionImageUrl: "work",
        tag: 51,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/2228110495"
    )
    static var crack = Question(
        question: "Mora perto de uma Cracolândia?",
        answerValue: -1,
        answerDescription: "Sim",
        questionImageUrl: "crack",
        tag: 52,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/2088078497"
    )
    static  var overwheight = Question(
        question: "Você está acima de seu peso ideal?",
        answerValue: -2,
        answerDescription: "Sim, menos de 10 Kg",
        questionImageUrl: "overwheight",
        tag: 53,
        categories: .demografic,
        recommendationLink: "ca-app-pub-2392051947290105/8322745550"
    )
    
   
}
