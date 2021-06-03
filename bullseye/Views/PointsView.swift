//
//  PointsView.swift
//  bullseye
//
//  Created by Segun Konibire on 01/06/2021.
//

import SwiftUI

struct PointsView: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var game: Game
    @Binding var sliderValue: Double
    
    var body: some View {
        
        let roundedValue: Int = Int(sliderValue.rounded())
        let points = game.points(sliderValue: roundedValue)
        
        VStack(spacing: 10) {
            InstructionText(text: "Your slider value is")
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You scored \(points) points\n🎉🎉🎉")
            Button(action: {
                
                alertIsVisible = false
                game.startNewRound(points: points)
                
            }) {
                ButtonText(text: "Start New Round")
            }

        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("Background"))
        .cornerRadius(21.0)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    
    static var alertIsVisible = Binding.constant(false)
    static var sliderValue = Binding.constant(50.0)
    static var game = Binding.constant(Game())
    
    static var previews: some View {
        PointsView(alertIsVisible: alertIsVisible, game: game, sliderValue: sliderValue)
        PointsView(alertIsVisible: alertIsVisible, game: game, sliderValue: sliderValue)
            .preferredColorScheme(.dark)
        PointsView(alertIsVisible: alertIsVisible, game: game, sliderValue: sliderValue)
            .previewLayout(.fixed(width: 568, height: 320))
        PointsView(alertIsVisible: alertIsVisible, game: game, sliderValue: sliderValue)
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
