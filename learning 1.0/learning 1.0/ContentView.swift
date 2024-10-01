//
//  ContentView.swift
//  learning 1.0
//
//  Created by Anuj Chaudhari on 2024-09-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Image("logo")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
