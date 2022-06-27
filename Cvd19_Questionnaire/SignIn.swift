//
//  SignIn.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 17.06.22.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct SignIn: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var checking = false
    @ObservedObject var covidListViewModel: CovidListViewModel
    
//    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        VStack{
            Text("Covid-19")
                .offset(x: -150, y: -150)
            Text("Questionnaire")
                .offset(x: -132, y: -150)

            Text("Sign In")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .offset(x: 0, y: -80)
            
            VStack{
                    TextField(text: $email, prompt: Text("Email")) {
                    }
                    .textFieldStyle(.roundedBorder)
                    
                    SecureField(text: $password, prompt: Text("Password")) {
                    }
                    .textFieldStyle(.roundedBorder)
                
                Button(action: {signIn()})
                 {
                    Text("Sign In")
                        .font(.system(size: 25, weight: .light))
                        .frame(width: 200, height: 25)
                }
                .frame(width: 200, height: 45)
                .buttonStyle(.bordered)
                .sheet(isPresented: $checking){
                    Profile(covidListViewModel: covidListViewModel)
                }

            }
            .frame(width: 350, height: 100, alignment: .leading)
        }
    }

    func signIn(){
        Auth.auth().signIn(withEmail: email, password: password){
            (result, error) in
            if error != nil{
                print(error?.localizedDescription ?? "")
            } else {
                print("success")
                self.checking.toggle()
            }
        }
    }
    
struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn(covidListViewModel: CovidListViewModel())
    }
}
}
