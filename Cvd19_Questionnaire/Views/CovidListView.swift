//
//  MyQ.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 17.06.22.
//

import SwiftUI

struct CovidListView: View {
    @ObservedObject var covidListViewModel: CovidListViewModel
    @State private var showingForm = false
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(covidListViewModel.covidViewModels){
                        covidVM in
                        CovidView(covidViewModel: covidVM)
                    }
                }.listStyle(InsetListStyle())
                    .navigationTitle("My Questionnaires")
                
                Button(action: {
                    showingForm = true
                }){
                    Circle()
                        .fill(Color.green)
                        .frame(height: 60)
                        .overlay(Image(systemName: "plus").foregroundColor(.white))

                }.sheet(isPresented: $showingForm){
                    FormView { (quiz) in
                        covidListViewModel.add(quiz)
                        showingForm = false
                        
                    }
                }
            }
        }
    }
}

struct CovidListView_Previews: PreviewProvider {
    static var previews: some View {
        CovidListView(covidListViewModel: CovidListViewModel())
    }
}
