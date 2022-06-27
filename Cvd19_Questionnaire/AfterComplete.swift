//
//  AfterComplete.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 17.06.22.
//

import SwiftUI

struct AfterComplete: View {
    @State private var checking = true
    var body: some View {
        
        VStack{
            
        Image("firework")
            .resizable()
            .frame(width: 250.0, height: 250.0)
            .cornerRadius(100)
            .offset(x: 0, y: -100)
        
         Text("You have filled today's questionnaire!")
                .font(.system(size: 20, weight: .light))
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 50)
            
            Button(action:{})
            {
                Text("Back to Profile")
                    .font(.system(size: 30, weight: .light))
                    .frame(width: 200, height: 30)
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 45)
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $checking)
            {
                Profile(covidListViewModel: CovidListViewModel())
            }
        }
    }
}

struct AfterComplete_Previews: PreviewProvider {
    static var previews: some View {
        AfterComplete()
    }
}
