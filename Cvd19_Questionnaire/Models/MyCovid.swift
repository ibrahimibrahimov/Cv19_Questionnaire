//
//  MyQuiz.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 22.06.22.
//

import FirebaseFirestoreSwift
import Foundation

struct MyCovid: Identifiable, Decodable , Encodable {
    @DocumentID var id: String?
    var date: String
    var q1: String
    var q2: String
    var q3: String
    var q4: String
    var q5: String
    var q6: String
    var q7: String
    var q8: String
    var q9: String
}
