//
//  CovidViewModel.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 22.06.22.
//

import Combine

final class CovidViewModel: ObservableObject, Identifiable {
    private let covidRepository = CovidRepository()
    @Published var myCovid: MyCovid
    
    var id = ""
    
    private var cancellables: Set<AnyCancellable> = []
    
    init(myCovid: MyCovid){
        self.myCovid = myCovid
        $myCovid
            .compactMap{ $0.id }
            .assign(to: \.id, on: self)
            .store(in: &cancellables)
    }
    
}
