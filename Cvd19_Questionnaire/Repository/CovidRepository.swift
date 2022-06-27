//
//  QuizRepository.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 22.06.22.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

final class CovidRepository: ObservableObject {
    private let path = "myCovid"
    private let store = Firestore.firestore()
    @Published var myCovid: [MyCovid] = []
    
    init(){
        get()
    }
    
    func get(){
        store.collection(path).addSnapshotListener { (snapshot, error)in
            if let error = error{
                print(error)
                return
            }
            self.myCovid = snapshot?.documents.compactMap {
                try? $0.data(as: MyCovid.self)
            } ?? []
        }
    }
    
    func add(_ myCovid: MyCovid){
        do{
            _ = try store.collection(path).addDocument(from: myCovid)
        }catch {
            fatalError("Adding a questionnaire failed")
        }
        
    }
}
