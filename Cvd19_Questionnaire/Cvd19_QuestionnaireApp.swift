//
//  Cvd19_QuestionnaireApp.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 17.06.22.
//

import SwiftUI
import Firebase

@main
struct Cvd19_QuestionnaireApp: App {
    
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        
        WindowGroup {
            CovidListView(covidListViewModel: CovidListViewModel())
        }
    }
}
