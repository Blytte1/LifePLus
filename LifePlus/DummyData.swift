//
//  Questions.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI

struct DummyData{
    static var lifeExpectancy = LifeExpectancy(questions: questions, naturality: "🇧🇷 Brasil")
    static  var questions:[Question] = [age,gender,city,grandParents,longevity,heart, cancer,income,graduation,workover65,married,lonely,work,exercise,sleepy,personality,speedy,alcoholic,smoker,overwheight,checkups]

    static var age = Question(question: "Qual a sua faixa etária?", answer: 0, description: "Fatores de risco externos são mais frequentes entre os mais jovens", imageUrl: "age", tag: 0,isSelected: false)
    
    static var gender = Question(question: "Qual seu gênero?", answer: 4, description: "Segundo pesquisas, mulheres tendem a viver uma vida mais longa do que homens, a propensão a fazer exames de rotina e a propensão a comportamentos menos arriscados são fatores que garante as mulheres uma logevidade maior", imageUrl: "gender", tag: 1,isSelected: false)
    
    static  var city = Question(question: "População da cidade onde você vive?", answer: 0, description: "Fatores importantes como  crimes, poluição e acesso a saúde, tendem a ser cada vez mais desafiadores à medida que a população de uma cidade aumenta", imageUrl: "city", tag: 2,isSelected: false)
    
    static  var grandParents = Question(question: "Pelo menos um de seus avós passou dos 85 anos?", answer: 0, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "grandparents", tag: 3,isSelected: false)
    
    static  var longevity = Question(question: "Todos os seus avós passaram dos 80 anos?", answer: 6, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "longevity", tag: 4,isSelected: false)
    
    static  var heart = Question(question: "Algum parente morreu de doença cardiovascular antes dos 50 anos?"
, answer: -4, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "heart", tag: 5,isSelected: false)
    
    static  var cancer = Question(question: "Algum irmão, irmã ou um dos pais teve câncer, doença do coração ou diabetes desde a infância?"
, answer: -3, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "cancer", tag: 6,isSelected: false)
    
    static  var income = Question(question: "Você ganha mais US$ 50 mil por ano?"
, answer: -2, description: "Me dá um real?", imageUrl: "income", tag: 7,isSelected: false)
    
    static  var graduation = Question(question: "Qual sua formação acadêmica?"
, answer: 2, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "graduation", tag: 8,isSelected: false)
    
    static  var workover65 = Question(question: "Você possui acima de 65 anos e continua trabalhando?"
, answer: 3, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "workover65", tag: 9,isSelected: false)
    
    static  var married = Question(question: "Você mora com seu cônjuge ou com um amigo?"
, answer: 5, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "married", tag: 10,isSelected: false)
    
    static  var lonely = Question(question: "Morou sozinho por pelo menos uma década desde seus 25 anos?"
, answer: -3, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "lonely", tag: 11,isSelected: false)
    
    static  var work = Question(question: "Você trabalha sentado o dia todo ou em algo que exija trabalho físico pesado?"
, answer: 0, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "work", tag: 12,isSelected: false)
    
    static  var exercise = Question(question: "Você costuma se exercitar regularmente?"
, answer: 2, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "exercise", tag: 13,isSelected: false)
    
    static  var sleepy = Question(question: "Você dorme mais de 10 horas por dia?"
, answer: -4, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "sleepy", tag: 14,isSelected: false)
    
    static  var personality = Question(question: " Em termos de personalidade, como você se considera?"
, answer: 1, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "personality", tag: 15,isSelected: false)
    
    static  var speedy = Question(question: "Você recebeu alguma multa por dirigir em alta velocidade no último ano?"
, answer: -1, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "speedy", tag: 16,isSelected: false)
    
    static  var alcoholic = Question(question: "Você bebe pelo menos o equivalente a uma dose de bebida alcoólica por dia?"
, answer: 0, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "alcoholic", tag: 17,isSelected: false)
    
    static  var smoker = Question(question: "Você fuma?"
, answer: -3, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "smoker", tag: 18,isSelected: false)

    static  var overwheight = Question(question: "Você está acima de seu peso ideal?"
, answer: -2, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "overwheight", tag: 19,isSelected: false)
    
    static  var checkups = Question(question: "Você tem mais de 40 anos e faz check-ups médicos anualmente?"
, answer: 2, description: "Um familiar direto com boa longevidade é um bom sinal para as gerações futuras", imageUrl: "checkup", tag: 20,isSelected: false)
}
