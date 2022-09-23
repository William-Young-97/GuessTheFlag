//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by William Young on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }

        showingScore = true
    }
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(stops: [
                .init(color: .mint, location: 0.33),
                .init(color: .blue, location: 0.66),
                .init(color: .purple, location: 0.99),
            ]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                        .font(.headline)
                        .bold()
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.headline)
                        .bold()
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
