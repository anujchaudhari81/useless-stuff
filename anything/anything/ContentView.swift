//
//  ContentView.swift
//  anything
//
//  Created by Anuj Chaudhari on 2024-09-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
           
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(1000)
                    .padding()
            Text("Anuj Chaudhari").font(.title).fontWeight(.light).multilineTextAlignment(.center).bold()
            }
            Spacer()
            .padding()
        }
    }


#Preview {
    ContentView()
}
