//
//  Welcome.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 17.06.22.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct ContentView: View {
    var body: some View {

        NavigationView{
            
        VStack {
            
            Text("Covid-19")
                .offset(x: -150, y: -150)
            Text("Questionnaire")
                .offset(x: -132, y: -150)
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .offset(x: -110, y: -90)
            NavigationLink("Sign In",destination: SignIn(covidListViewModel: CovidListViewModel()))
                .font(.system(size: 30, weight: .light))
                .frame(width: 200, height: 30)
            NavigationLink("Sign Up",destination: SignUp())
                .font(.system(size: 30, weight: .light))
                .frame(width: 200, height: 30)
            
            Text("Continue by")
                .font(.system(size: 20, weight: .light))
                .frame(width: 200, height: 50)
            
            HStack{
                Image("google")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .cornerRadius(100)
                Image("linkedin")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                Image("facebook")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
            }
            .frame(width: 200, height: 50)
            
            
            
        }
        .frame(width: 200, height: 200)
        
        Text("Your health is our first priority!")
            .font(.system(size: 20, weight: .light))
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 50)
            .offset(x: 0, y: 150)
    }
    
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

