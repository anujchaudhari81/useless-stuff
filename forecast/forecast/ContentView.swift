//
//  ContentView.swift
//  forecast
//
//  Created by Anuj Chaudhari on 2024-09-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightblue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                 .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 8){
                Text("Mississauga, ON")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height:180)
                    
                    Text("72°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                
                HStack(spacing: 20){
                    WeatherDayView(dayOFWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    
                    WeatherDayView(dayOFWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 88)

                    WeatherDayView(dayOFWeek: "THUS",
                                   imageName: "cloud.sun.fill",
                                   temperature: 77)

                    WeatherDayView(dayOFWeek: "FRI",
                                   imageName: "cloud.rainbow.half.fill",
                                   temperature: 70)
                    
                    WeatherDayView(dayOFWeek: "SAT",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 68)
                }
         
                            Spacer()
                        }
                    }
                }
}
#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOFWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        HStack{
            VStack{
                Text(dayOFWeek)
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.white)
                
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height:40)
                
                Text("\(temperature)°")
                    .font(.system(size: 28, weight: .medium))
                    .foregroundColor(.white)
            }
        }
    }
}
