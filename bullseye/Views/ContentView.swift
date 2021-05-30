//
//  ContentView.swift
//  bullseye
//
//  Created by Segun Konibire on 23/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var silderValue = 50.0
    
    @State private var game: Game = Game();
    
    var body: some View {
        VStack {
            ZStack {
                Color("Background")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    Text("🎯🎯🎯\nPut the bullseye as close as you can to")
                        .foregroundColor(Color("TextColor"))
                        .kerning(2.0)
                        .bold()
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        .font(.footnote)
                        .lineSpacing(4.0)
                        .multilineTextAlignment(.center)
                    Text(String(game.target))
                        .foregroundColor(Color("TextColor"))
                        .kerning(-1.0)
                        .fontWeight(.black)
                        .font(.largeTitle)
                    HStack{
                        Text("1").foregroundColor(Color("TextColor")).bold().font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                        Slider(value: $silderValue, in: 1...100)
                        Text("100").foregroundColor(Color("TextColor")).bold().font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                    Button(action: {
                        alertIsVisible = true
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
                            .cornerRadius(21)
                            .overlay(
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color(.white), lineWidth: 4)
                            )
                    }
                    .alert(isPresented: $alertIsVisible, content: {
                        
                        let roundedValue: Int = Int(silderValue.rounded())
                        
                        return Alert(title: Text("Bullseye!"),
                                     message: Text("Your slider is at \(roundedValue).\n You score \(game.points(sliderValue: roundedValue)) points thisd round."),
                                     dismissButton: .default(Text("Awesome!")))
                    })
                }
            }
        }
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
