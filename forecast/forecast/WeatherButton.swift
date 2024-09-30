//
//  WeatherButton 2.swift
//  forecast
//
//  Created by Anuj Chaudhari on 2024-09-30.
//


import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}

struct WeatherButton_Preview: PreviewProvider{
    static var previews: some View{
        WeatherButton(title: "Test Title",
                      textColor: .white,
                      backgroundColor: .blue)
    }
}
