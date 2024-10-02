//
//  ContentView.swift
//  Memorize
//
//  Created by Anuj Chaudhari on 2024-10-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
        }
    }


struct CardView: View {
    
    @State var isFaceUp = false
    
    var body: some View {
       
        ZStack {
            
            let base = RoundedRectangle(cornerRadius: 12)
              
            if isFaceUp {
                   base.fill(Color.white)
                    base.overlay(
                        base.stroke(Color.orange, lineWidth: 2)
                    )
                Text("😭")
                    .font(.largeTitle)
            } else {
                base.fill(Color.green)
                    .overlay(
                        base.stroke(Color.orange, lineWidth: 2)
                    )
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}



#Preview {
    ContentView()
}
