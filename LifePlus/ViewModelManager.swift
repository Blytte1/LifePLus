//
//  ViewModelManager.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 19/10/23.
//

import Foundation

class ViewModelManager:ObservableObject{
 
    
  @Published var navigationModel:NavigationModel
  @Published var contentViewModel:ContentViewModel
  @Published var loadingViewModel:LoadingViewModel
  @Published var questionViewModel:QuestionViewModel
  @Published var introViewModel:IntroViewModel
  @Published var nameViewModel: NameViewModel
  @Published var menuViewModel: MenuViewModel
  @Published var answerViewModel: AnswersViewModel
  @Published var creditsViewModel: CreditsViewModel
  @Published var referenceViewModel: ReferenceViewModel
    init(navigationModel: NavigationModel, contentViewModel: ContentViewModel, loadingViewModel: LoadingViewModel, questionViewModel: QuestionViewModel, introViewModel: IntroViewModel, nameViewModel: NameViewModel, menuViewModel: MenuViewModel, answerViewModel: AnswersViewModel, creditsViewModel: CreditsViewModel, referenceViewModel: ReferenceViewModel) {
        self.navigationModel = navigationModel
        self.contentViewModel = contentViewModel
        self.loadingViewModel = loadingViewModel
        self.questionViewModel = questionViewModel
        self.introViewModel = introViewModel
        self.nameViewModel = nameViewModel
        self.menuViewModel = menuViewModel
        self.answerViewModel = answerViewModel
        self.creditsViewModel = creditsViewModel
        self.referenceViewModel = referenceViewModel
    }
}
