//
//  Questions.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI

struct DummyData{
    
    static var user:User = User(lifeExpectancy: DummyData.lifeExpectancy, name: "Roberto Mascarenhas",age:60)
    
    static var lifeExpectancy = LifeExpectancy(questions: questions, naturality: "🇧🇷 Brasil", totalLifeExpectancy:76)
    
    static  var questions:[Question] = [age,gender,city,grandParents,longevity,heart, cancer,income,graduation,workover65,married,lonely,work,exercise,sleepy,personality,speedy,alcoholic,smoker,overwheight,checkups]

    static var age = Question(question: "Quantos anos você tem?", answerValue: 0, answerDescription: "60 anos", questionImageUrl: "age", tag: 0)
    
    static var gender = Question(question: "Qual seu sexo?", answerValue: -3, answerDescription: "Masculino", questionImageUrl: "gender", tag: 1)
    
    static  var city = Question(question: "População da cidade onde você vive?", answerValue: 0, answerDescription: "Abaixo de 10.000 habitantes.", questionImageUrl: "city", tag: 2)
    
    static  var grandParents = Question(question: "Pelo menos um de seus avós viveu acima de 85 anos?", answerValue: 0, answerDescription: "Não.", questionImageUrl: "grandparents", tag: 3)
    
    static  var longevity = Question(question: "Todos os seus avós avós viveram acima de 80 anos?", answerValue: 6, answerDescription: "Sim.", questionImageUrl: "longevity", tag: 4)
    
    static  var heart = Question(question: "Algum parente morreu de doença cardiovascular antes dos 50 anos?"
, answerValue: -4, answerDescription: "Sim.", questionImageUrl: "heart", tag: 5)
    
    static  var cancer = Question(question: "Algum membro de seu núcleo familiar tem ou teve câncer, doença do coração ou diabetes tipo 1?"
, answerValue: -3, answerDescription: "Sim.", questionImageUrl: "cancer", tag: 6)
    
    static  var income = Question(question: "Você ganha mais R$ 200 mil por ano?"
, answerValue: 2, answerDescription: "Ainda não!", questionImageUrl: "income", tag: 7)
    
    static  var graduation = Question(question: "Qual sua formação acadêmica?"
, answerValue: 2, answerDescription: "Nivel Superior", questionImageUrl: "graduation", tag: 8)
    
    static  var workover65 = Question(question: "Você possui acima de 65 anos e continua trabalhando?"
, answerValue: 3, answerDescription: "Não.", questionImageUrl: "workover65", tag: 9)
    
    static  var married = Question(question: "Você mora com seu cônjuge ou com um(a) Companheiro(a)?"
, answerValue: 5, answerDescription: "Não.", questionImageUrl: "married", tag: 10)
    
    static  var lonely = Question(question: "Morou sozinho por pelo menos uma década desde seus 25 anos?"
, answerValue: -3, answerDescription: "Não.", questionImageUrl: "lonely", tag: 11)
    
    static  var work = Question(question: "Você trabalha sentado o dia todo ou em algo que exija trabalho físico pesado?"
, answerValue:  3, answerDescription: "Sim", questionImageUrl: "work", tag: 12)
    
    static  var exercise = Question(question: "Você costuma se exercitar regularmente?"
, answerValue: 2, answerDescription: "Sim, três vezes por semana.", questionImageUrl: "exercise", tag: 13)
    
    static  var sleepy = Question(question: "Você dorme mais de 10 horas por dia?"
, answerValue: -4, answerDescription: "Sim.", questionImageUrl: "sleepy", tag: 14)
    
    static  var personality = Question(question: " Em termos de personalidade, como você se considera?"
, answerValue: -3, answerDescription: "Intenso.", questionImageUrl: "personality", tag: 15)
    
    static  var speedy = Question(question: "Você recebeu alguma multa por dirigir em alta velocidade no último ano?"
, answerValue: -1, answerDescription: "não.", questionImageUrl: "speedy", tag: 16)
    
    static  var alcoholic = Question(question: "Você bebe pelo menos o equivalente a uma dose de bebida alcoólica por dia?"
, answerValue: 0, answerDescription: "não.", questionImageUrl: "alcoholic", tag: 17)
    
    static  var smoker = Question(question: "Você fuma?"
, answerValue: -3, answerDescription: "não.", questionImageUrl: "smoker", tag: 18)

    static  var overwheight = Question(question: "Você está acima de seu peso ideal?"
, answerValue: -2, answerDescription: "sim, por 15 quilos", questionImageUrl: "overwheight", tag: 19)
    
    static  var checkups = Question(question: "Você faz check-ups médicos anualmente?"
, answerValue: 2, answerDescription: "Não.", questionImageUrl: "checkup", tag: 20)
}
