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
            BackgroundView(topColor: .blue, bottomColor:Color("lightblue") )
            
            VStack(spacing: 8){
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 73)
                
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
                Button{
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(15)
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

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View{
    
    var imageName: String
    var temperature: Int
    
    var body: some View{
        
        
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height:180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}