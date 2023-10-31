//
//  Questions.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
// explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: ""

import SwiftUI

struct DummyData{
   
    static var user: User = User(lifeExpectancy: DummyData.lifeExpectancy,age:35, name: "", language: "en")
    
    static var lifeExpectancy = LifeExpectancy(questions: questions, naturality: "🇧🇷 Brasil", totalLifeExpectancy:76)
    
    static var questions:[Question] = [gender,city,grandParents,longevity,heart, cancer,income,graduation,workover65,married,lonely,work,exercise,sleepy,personality,speedy,alcoholic,smoker,overwheight,checkups]
    
    static var gender = Question(question:"Qual seu sexo?", answerValue: -3, answerDescription: "Masculino", questionImageUrl: "gender", tag: 0, categories: .demografic,explanation: "Mulheres tendem a viver mais que homens, fatores como consultas médicas regulares e aversão natural a comportamentos de risco contribuem para uma expectativa de vida mais longa.",recommendation: "Priorize a si mesma antes de ajudar outras pessoas, pratique uma rotina de hábitos saudáveis como exercício físico diário, checkups regulares com o médico são essenciais.",recommendationImage: "gender1",recommendationTag: "Centrum Polivitamínico Vitaminas Mulher de A a Z - 60 comprimidos",recommendationPrice: "Apenas R$: 149,99", recommendationLink: "https://www.amazon.com.br/Esponja-Limpeza-Pesada-pac-Flash/dp/B078NKGKVS/ref=asc_df_B078NKGKVS/?tag=googleshopp00-20&linkCode=df0&hvadid=379805722748&hvpos=&hvnetw=g&hvrand=3247346357091502349&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1001541&hvtargid=pla-1207497581911&psc=1")
    
    static  var city = Question(question: "Qual a população aproximada da cidade onde você vive?", answerValue: 0, answerDescription: "Abaixo de 10.000 habitantes.", questionImageUrl: "city", tag: 1, categories: .demografic,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var grandParents = Question(question: "Ao menos um de seus avós viveu acima de 85 anos?", answerValue: 0, answerDescription: "Não.", questionImageUrl: "grandparents", tag: 2, categories: .hereditary,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var longevity = Question(question:"Todos os seus avós avós viveram acima de 80 anos?", answerValue: 6, answerDescription: "Sim.", questionImageUrl: "longevity", tag: 3, categories: .hereditary,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var heart = Question(question: "Algum parente morreu de doença cardiovascular antes dos 50 anos?"
                                 , answerValue: -4, answerDescription: "Sim.", questionImageUrl: "heart", tag: 4, categories: .hereditary,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var cancer = Question(question: "Entre você, seus pais ou irmãos houve algum caso de câncer, diabetes tipo 1 ou doença do coração?"
                                  , answerValue: -3, answerDescription: "Sim.", questionImageUrl: "cancer", tag: 5, categories: .hereditary,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var income = Question(question: "Você recebe acima de R$50 mil ao ano?"
                                  , answerValue: 2, answerDescription: "Ainda não!", questionImageUrl: "income", tag: 6, categories: .demografic,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var graduation = Question(question: "Qual sua formação acadêmica?"
                                      , answerValue: 2, answerDescription: "Nivel Superior", questionImageUrl: "graduation", tag: 7, categories: .demografic,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var workover65 = Question(question: "Você tem mais de 65 anos e ainda trabalha?"
                                      , answerValue: 3, answerDescription: "Não.", questionImageUrl: "workover65", tag: 8, categories: .demografic,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var married = Question(question: "Você mora com seu cônjuge ou com um companheiro?"
                                   , answerValue: 5, answerDescription: "Não.", questionImageUrl: "married", tag: 9, categories: .demografic,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var lonely = Question(question: "Morou sozinho por pelo menos uma década desde seus 25 anos?"
                                  , answerValue: -3, answerDescription: "Não.", questionImageUrl: "lonely", tag: 10, categories: .demografic,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var work = Question(question: "Passa muitas horas sentado ou exerce trabalho pesado?"
                                , answerValue:  3, answerDescription: "Sim", questionImageUrl: "work", tag: 11, categories: .demografic,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var exercise = Question(question: "Você costuma se exercitar regularmente?"
                                    , answerValue: 2, answerDescription: "Sim, três vezes por semana.", questionImageUrl: "exercise", tag: 12, categories: .habit,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var sleepy = Question(question: "Você dorme mais de 10 horas por dia?"
                                  , answerValue: -4, answerDescription: "Sim.", questionImageUrl: "sleepy", tag: 13, categories: .habit,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var personality = Question(question: "Em termos de personalidade, como você se considera?"
                                       , answerValue: -3, answerDescription: "Intenso.", questionImageUrl: "personality", tag: 14, categories: .habit,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var speedy = Question(question: "Você recebeu alguma multa por dirigir em alta velocidade no último ano?"
                                  , answerValue: -1, answerDescription: "não.", questionImageUrl: "speedy", tag: 15, categories: .habit,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var alcoholic = Question(question: "Você bebe pelo menos o equivalente a uma dose de bebida alcoólica por dia?"
                                     , answerValue: 0, answerDescription: "não.", questionImageUrl: "alcoholic", tag: 16, categories: .habit,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var smoker = Question(question: "Você fuma?"
                                  , answerValue: -3, answerDescription: "não.", questionImageUrl: "smoker", tag: 17, categories: .habit,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")

    static  var overwheight = Question(question: "Você está acima de seu peso ideal?"
                                       , answerValue: -2, answerDescription: "sim, por 15 quilos", questionImageUrl: "overwheight", tag: 18, categories: .habit,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
    
    static  var checkups = Question(question: "Você faz check-ups médicos anualmente?"
                                    , answerValue: 2, answerDescription: "Não.", questionImageUrl: "checkup", tag: 19, categories: .habit,explanation: "",recommendation: "",recommendationImage: "",recommendationTag: "",recommendationPrice: "", recommendationLink: "")
}
