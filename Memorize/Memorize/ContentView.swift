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
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white) // Fill with white color when face up
                    .overlay( // Overlay border on top
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.orange, lineWidth: 2)
                    )
                Text("😭")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.orange)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.orange, lineWidth: 2)
                    )
            }
        }
    }
}

#Preview {
    ContentView()
}
