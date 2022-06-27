//
//  covidView.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 22.06.22.
//

import SwiftUI

struct CovidView: View {
    @State private var flipped = true
    var covidViewModel: CovidViewModel
    var body: some View {
        RoundedRectangle(cornerRadius: 6)
            .fill(flipped ? Color.white : Color.blue)
            .overlay(
                ZStack {
                    HStack{
                        Spacer()
                    }
                    if(flipped){
                        Text(covidViewModel.myCovid.date)
                            .foregroundColor(Color.black)
                            .font(.custom("Avenir", size: 24))
                    }else{
                        VStack{
                            Text(covidViewModel.myCovid.q1)
                            Text(covidViewModel.myCovid.q2)
                            Text(covidViewModel.myCovid.q3)
                            Text(covidViewModel.myCovid.q4)
                            Text(covidViewModel.myCovid.q5)
                            Text(covidViewModel.myCovid.q6)
                            Text(covidViewModel.myCovid.q7)
                            Text(covidViewModel.myCovid.q8)
                            Text(covidViewModel.myCovid.q9)
                        }
                        .foregroundColor(Color.white)
                    }
                }
                    
            ).onTapGesture {
                withAnimation{
                    flipped.toggle()
                }
            }
    }
}

