//
//  ContentView.swift
//  SlotsChallenge-SwiftUI
//
//  Created by K Ashok on 16/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        VStack {
            Spacer()
            Text("Slots Challenge")
                .font(.largeTitle)
            Spacer()
            Text("Score: \(score)")
            HStack {
                Image("fruit\(slot1)").resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)").resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)").resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin") {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3 {
                    score += 15
                } else {
                    score -= 5
                }
            }
            .padding()
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(20)
            .font(.system(size: 18, weight: .bold, design: .rounded))
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
