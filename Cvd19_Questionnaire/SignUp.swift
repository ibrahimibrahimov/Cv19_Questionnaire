//
//  SignUp.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 17.06.22.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct SignUp: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var signUpProcessing = false
    
    
    var body: some View {
        
        VStack{
            Text("Covid-19")
                .offset(x: -150, y: -150)
            Text("Questionnaire")
                .offset(x: -132, y: -150)
            
            Text("Sign Up")
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
                
                Button(action: { signUp(userEmail: email, userPassword: password)}) {
                    Text("Sign Up")
                        .font(.system(size: 25, weight: .light))
                        .frame(width: 200, height: 25)
                }
                .frame(width: 200, height: 45)
                .buttonStyle(.bordered)
                .sheet(isPresented: $signUpProcessing){
                    SignIn(covidListViewModel: CovidListViewModel())
                }
                
            }
            .frame(width: 350, height: 100, alignment: .leading)
        }
    }
    func signUp(userEmail: String, userPassword: String)
    {
        signUpProcessing = true
        Auth.auth().createUser(withEmail: userEmail, password: userPassword) { authResult, error in
            guard error == nil else {
                signUpProcessing = false
                return
            }
            switch authResult {
            case .none:
                print("Could not create account.")
                signUpProcessing = false
            case .some(_):
                print("User created")
                self.signUpProcessing.toggle()
            }
        }
    }
}




struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
