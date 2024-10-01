//
//  ContentView.swift
//  Memorize
//
//  Created by Anuj Chaudhari on 2024-10-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

struct CardView: View{
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 2)
            Text("😭").font(.largeTitle)
        }
    }
}



















#Preview {
    ContentView()
}
