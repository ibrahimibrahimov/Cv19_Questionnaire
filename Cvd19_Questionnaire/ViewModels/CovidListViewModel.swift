//
//  QuizListViewModel.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 22.06.22.
//

import Combine

final class CovidListViewModel: ObservableObject {
    @Published var covidRepository = CovidRepository()
    @Published var covidViewModels: [CovidViewModel] = []
    
    private var cancellables: Set<AnyCancellable> = []
    
    init(){
        covidRepository.$myCovid
            .map{myCovid in
                myCovid.map(CovidViewModel.init)
            }
            .assign(to: \.covidViewModels, on: self)
            .store(in: &cancellables)
        
    }
    
    func add(_ myCovid: MyCovid){
        covidRepository.add(myCovid)
    }
}
