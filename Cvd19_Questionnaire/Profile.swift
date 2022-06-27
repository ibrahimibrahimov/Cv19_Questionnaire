//
//  Profile.swift
//  Cvd19_Questionnaire
//
//  Created by Ibrahim Ibrahimov on 17.06.22.
//

import SwiftUI

struct Profile: View {
    @ObservedObject var covidListViewModel: CovidListViewModel
    @State var showMenu = false
    var body: some View {
        let drag = DragGesture()
            .onEnded{
                if $0.translation.width < -100 {
                                    withAnimation {
                                        self.showMenu = false
                                    }
                                }
            }
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                MainView(showMenu: self.$showMenu, covidListViewModel: CovidListViewModel())
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
                if self.showMenu{
                    MenuView(covidListViewModel: covidListViewModel)
                        .frame(width: geometry.size.width/2)
                        .transition(.move(edge: .leading))
                }
                
                
            }
            .gesture(drag)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(covidListViewModel: CovidListViewModel())
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    @State private var showingForm = false
    @ObservedObject var covidListViewModel: CovidListViewModel
    var body: some View {
        Button(action: {
            withAnimation{
                self.showMenu = true
            }
                }) {
                    Text("My Profile")
                        .font(.system(size: 20, weight: .light))
                }
                .offset(x: -140, y: -340)
        Text("Start your today's questionnaire:")
            .font(.system(size: 20, weight: .light))
            .offset(y: -70)
            
            Button(action: {
                showingForm = true
            }){
                Text("Start")
            }.sheet(isPresented: $showingForm){
                FormView { (quiz) in
                    covidListViewModel.add(quiz)
                    showingForm = false
                }
            }
//        Button(action: startQ)
//            {
//                Text("Start")
//                    .font(.system(size: 30, weight: .light))
//                    .frame(width: 200, height: 30)
//                    .foregroundColor(.white)
//            }
//            .frame(width: 200, height: 45)
//            .buttonStyle(.borderedProminent)

    }
}



