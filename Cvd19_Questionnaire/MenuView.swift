//
//  MenuView.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 19.06.22.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var covidListViewModel: CovidListViewModel
    @State private var checking = true
    var body: some View {
        VStack(alignment: .leading)
        {
            HStack
            {
                Image(systemName: "m.square")
                    .foregroundColor(.white)
                    .imageScale(.large)
                Text("My Questionnaires")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding(.top,100)
            .sheet(isPresented: $checking)
            {
                Profile(covidListViewModel: CovidListViewModel())
            }
            
            HStack
            {
                Image(systemName: "timer.square")
                    .foregroundColor(.white)
                    .imageScale(.large)
                Text("Statistics")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding(.top,30)
            
            HStack
            {
                Image(systemName: "arrowshape.turn.up.left")
                    .foregroundColor(.white)
                    .imageScale(.large)
                Text("Sign Out")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding(.top,30)
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.blue)
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(covidListViewModel: CovidListViewModel())
    }
}
}
