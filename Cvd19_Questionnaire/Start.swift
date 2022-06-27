//
//  Start.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 17.06.22.
//

import SwiftUI
enum YesorNo: String, CaseIterable, Identifiable {
    case yes
    case no
    var id: String { self.rawValue }
}


struct FirstQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("Do you have a fever ( temperature over 100.4◦ F or 38◦ C) without having taken any fever-reducing medications?")
                    Picker("Q1", selection: $answer) {
                        ForEach(YesorNo.allCases) { answer in
                            Text(answer.rawValue.capitalized)
                                .tag(answer)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 300, height: 100, alignment: .leading)
                }
                
                .frame(width: 300, height: 200, alignment: .leading)
                .navigationBarTitle("1/10", displayMode: .inline)
                
                
                NavigationLink(destination: SecondQ(), label: {Text("Next Question")})
            }
        }
        
    }
}
struct SecondQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
            VStack{
                VStack{
                    Text("Do you have a loss of smell or taste?")
                    Picker("Q2", selection: $answer) {
                        ForEach(YesorNo.allCases) { answer in
                            Text(answer.rawValue.capitalized)
                                .tag(answer)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 300, height: 100, alignment: .leading)
                }
                
                .frame(width: 300, height: 200, alignment: .leading)
                .navigationBarTitle("2/10", displayMode: .inline)
            
            
            NavigationLink(destination: ThirdQ(), label: {Text("Next Question")})
        }
        
    }
}
struct ThirdQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
            VStack{
                VStack{
                    Text("Do you have a cough?")
                    Picker("Q3", selection: $answer) {
                        ForEach(YesorNo.allCases) { answer in
                            Text(answer.rawValue.capitalized)
                                .tag(answer)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 300, height: 100, alignment: .leading)
                }
                
                .frame(width: 300, height: 200, alignment: .leading)
                .navigationBarTitle("3/10", displayMode: .inline)
            
            
            NavigationLink(destination: FourthQ(), label: {Text("Next Question")})
        }
        
    }
}

struct FourthQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
            VStack{
                VStack{
                    Text("Do you have muscle aches?")
                    Picker("Q4", selection: $answer) {
                        ForEach(YesorNo.allCases) { answer in
                            Text(answer.rawValue.capitalized)
                                .tag(answer)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 300, height: 100, alignment: .leading)
                }
                
                .frame(width: 300, height: 200, alignment: .leading)
                .navigationBarTitle("4/10", displayMode: .inline)
            
            
            NavigationLink(destination: FifthQ(), label: {Text("Next Question")})
        }
        
        
    }
}

struct FifthQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
            VStack{
                VStack{
                    Text("Do you have a sore throat?")
                    Picker("Q5", selection: $answer) {
                        ForEach(YesorNo.allCases) { answer in
                            Text(answer.rawValue.capitalized)
                                .tag(answer)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 300, height: 100, alignment: .leading)
                }
                
                .frame(width: 300, height: 200, alignment: .leading)
            .navigationBarTitle("5/10", displayMode: .inline)
            
            
            NavigationLink(destination: SixthQ(), label: {Text("Next Question")})
        }
        
    }
}

struct SixthQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
            VStack{
                VStack{
                    Text("Do you have shortness of breath?")
                    Picker("Q6", selection: $answer) {
                        ForEach(YesorNo.allCases) { answer in
                            Text(answer.rawValue.capitalized)
                                .tag(answer)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 300, height: 100, alignment: .leading)
                }
                
                .frame(width: 300, height: 200, alignment: .leading)
                .navigationBarTitle("6/10", displayMode: .inline)
            
            
            NavigationLink(destination: SeventhQ(), label: {Text("Next Question")})
        }
        
    }
}

struct SeventhQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
        VStack{
            VStack{
                Text("Have you, or anyone you have been in close contact with, been diagnosed with COVID-19 or placed in quarantine for possible exposure to COVID-19?")
                Picker("Q7", selection: $answer) {
                    ForEach(YesorNo.allCases) { answer in
                        Text(answer.rawValue.capitalized)
                            .tag(answer)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 300, height: 100, alignment: .leading)
            }
            
            .frame(width: 300, height: 200, alignment: .leading)
            .navigationBarTitle("7/10", displayMode: .inline)
            
            
            NavigationLink(destination: EightQ(), label: {Text("Next Question")})
        }
        
        
    }
}

struct EightQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
        VStack{
            VStack{
                Text("Do you have a headache?")
                Picker("Q8", selection: $answer) {
                    ForEach(YesorNo.allCases) { answer in
                        Text(answer.rawValue.capitalized)
                            .tag(answer)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 300, height: 100, alignment: .leading)
            }
            
            .frame(width: 300, height: 200, alignment: .leading)
            .navigationBarTitle("8/10", displayMode: .inline)
            
            
            NavigationLink(destination: NinthQ(), label: {Text("Next Question")})
        }
        
    }
}

struct NinthQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
        VStack{
            VStack{
                Text("Do you have chills?")
                Picker("Q9", selection: $answer) {
                    ForEach(YesorNo.allCases) { answer in
                        Text(answer.rawValue.capitalized)
                            .tag(answer)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 300, height: 100, alignment: .leading)
            }
            
            .frame(width: 300, height: 200, alignment: .leading)
            .navigationBarTitle("9/10", displayMode: .inline)
            
            
            NavigationLink(destination: TenthQ(), label: {Text("Next Question")})
        }
        
        
    }
}

struct TenthQ: View {
    @State private var answer = YesorNo.yes
    var body: some View {
        VStack{
            VStack{
                Text("Have you experienced any gastrointestinal symptoms such as nausea, vomiting, diarrhea, or loss of appetite?")
                Picker("Q10", selection: $answer) {
                    ForEach(YesorNo.allCases) { answer in
                        Text(answer.rawValue.capitalized)
                            .tag(answer)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 300, height: 100, alignment: .leading)
            }
            
            .frame(width: 300, height: 200, alignment: .leading)
            .navigationBarTitle("10/10", displayMode: .inline)
            
            
            NavigationLink(destination: AfterComplete(), label: {Text("Finish the questionnaire")})
        }
        
        
    }
}


struct Start_Previews: PreviewProvider {
    static var previews: some View {
        FirstQ()
        }
    }
