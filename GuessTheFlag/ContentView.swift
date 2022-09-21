//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by William Young on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Spacer()
            HStack(alignment: .top, spacing: 5){
                Text("I'm a")
                Text("H stack")
            }
            Spacer()
            HStack(alignment: .top, spacing: 5){
                Text("I'm a")
                Text("H stack")
            }
            Spacer()
            HStack(alignment: .top, spacing: 5){
                Text("I'm a")
                Text("H stack")
            }
            Spacer()
        }
        ZStack(alignment: .bottom) {
            Text("Over")
            Text("Lap")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
