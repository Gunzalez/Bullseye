//
//  ContentView.swift
//  bullseye
//
//  Created by Segun Konibire on 23/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game: Game = Game();
    
    var body: some View {
        VStack {
            ZStack {
                BackgroundView(game: $game)
                VStack{
                    InstructionsView(game: $game)
                        .padding(.bottom, CGFloat(alertIsVisible ? 0 : 100))
                    if alertIsVisible {
                        PointsView(alertIsVisible: $alertIsVisible, game: $game, sliderValue: $sliderValue)
                            .transition(.scale)
                    } else {
                        ButtonView(alertIsVisible: $alertIsVisible, game: $game, sliderValue: $sliderValue)
                            .transition(.scale)
                    }
                }
                if !alertIsVisible {
                    SliderView(sliderValue: $sliderValue)
                        .transition(.scale)
                }
            }
        }
    }
}

struct InstructionsView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack{
        InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
            .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
        BigNumberText(text: String(game.target))
        }
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack{
            SliderText(text: "1")
            Slider(value: $sliderValue, in: 1...100)
            SliderText(text: "100")
        }.padding()
    }
}


struct ButtonView: View {
    @Binding var alertIsVisible: Bool
    @Binding var game: Game
    @Binding var sliderValue: Double
    
    var body: some View {
        Button(action: {
            withAnimation {
                alertIsVisible = true
            }
        }) {
            Text("Hit Me")
                .bold()
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                .font(.title3)
                .padding(20)
                .background(ZStack {
                    Color("Button")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                })
                .foregroundColor(.white)
                .cornerRadius(Constants.General.roundedCornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: Constants.General.roundedCornerRadius)
                        .stroke(Color(.white), lineWidth: Constants.General.strokeWidth)
                )
        }
//        .alert(isPresented: $alertIsVisible, content: {
//
//            let roundedValue: Int = Int(sliderValue.rounded())
//            let points = game.points(sliderValue: roundedValue)
//
//            return Alert(title: Text("Bullseye!"),
//                         message: Text("Your slider is at \(roundedValue).\n You score \(points) points this round."),
//                         dismissButton: .default(Text("Awesome!")){
//                            game.startNewRound(points: points)
//
//                         })
//        })
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
