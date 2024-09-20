//
//  ContentView.swift
//  anything
//
//  Created by Anuj Chaudhari on 2024-09-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("aaa")
                .cornerRadius(20)
                .padding(.horizontal, 20)
                .padding(.vertical, 40)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
