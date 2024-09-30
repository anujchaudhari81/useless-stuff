import SwiftUI

struct ContentView: View {
    @State private var isNight = true

    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)

            VStack(spacing: 8) {
                CityTextView(cityName: "Cupertino, CA")

                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 73)

                HStack(spacing: 20) {
                    WeatherDayView(dayOFWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOFWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOFWeek: "THUS", imageName: "cloud.sun.fill", temperature: 77)
                    WeatherDayView(dayOFWeek: "FRI", imageName: "cloud.rainbow.half.fill", temperature: 70)
                    WeatherDayView(dayOFWeek: "SAT", imageName: "cloud.sun.rain.fill", temperature: 68)
                }

                Spacer()

                Button {
                    isNight.toggle() // Toggles the isNight state variable
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
        VStack {
            Text(dayOFWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)

            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)

            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool

    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
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

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)

            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
