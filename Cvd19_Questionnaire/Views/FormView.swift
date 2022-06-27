//
//  FormView.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 22.06.22.
//

import SwiftUI

struct FormView: View {
    @State private var date: String = ""
    @State private var q1: String = ""
    @State private var q2: String = ""
    @State private var q3: String = ""
    @State private var q4: String = ""
    @State private var q5: String = ""
    @State private var q6: String = ""
    @State private var q7: String = ""
    @State private var q8: String = ""
    @State private var q9: String = ""
    
    var didAddCovid: (_ quiz: MyCovid) -> Void
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    TextField("Date",text: $date)
                    TextField("Do you have a fever?", text: $q1)
                    TextField("Do you have a loss of smell or taste?", text: $q2)
                    TextField("Do you have a cough?", text: $q3)
                    TextField("Do you have muscle aches?", text: $q4)
                    TextField("Do you have a sore throat?", text: $q5)
                    TextField("Do you have shortness of breath?", text: $q6)
                    TextField("Have you been diagnosed with COVID-19?", text: $q7)
                    TextField("Do you have a headache?", text: $q8)
                    TextField("Do you have chills?", text: $q9)
                }
                
                Button("Submit Questionnaire"){
                    let covid = MyCovid(date: date ,q1: q1, q2: q2, q3: q3, q4: q4, q5: q5, q6: q6, q7: q7, q8: q8, q9: q9)
                    didAddCovid(covid)
                }.disabled(q1.isEmpty || q2.isEmpty || q3.isEmpty || q4.isEmpty || q5.isEmpty || q6.isEmpty || q7.isEmpty || q8.isEmpty || q9.isEmpty)
                    .padding()
            }.navigationTitle("New Questionnaire")
        }
    }
}
