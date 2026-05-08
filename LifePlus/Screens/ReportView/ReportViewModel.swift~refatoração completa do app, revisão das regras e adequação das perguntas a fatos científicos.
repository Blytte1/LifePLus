//
//  ReportViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation
import Observation

@Observable
class  ReportViewModel{

var dm:DataManager
init(dm: DataManager) { self.dm = dm }

    var user:User = DummyData.user
    
   func getUser() {
        user = dm.user
    }
    func restart(){
        dm.startOver()
    }
    func goToSetup(){
        dm.router.navigate(.setup(SetUpViewModel(dm: dm)))
    }
    func showAnswers(){
        dm.router.navigate(.answer(AnswerViewModel(dm: dm, questions: dm.user.lifeExpectancy.questions)))
    }
}
