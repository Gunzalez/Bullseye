//
//  PointsView.swift
//  bullseye
//
//  Created by Segun Konibire on 01/06/2021.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        VStack(spacing: 10) {
            InstructionText(text: "Your slider value is")
            BigNumberText(text: "89")
            BodyText(text: "You scored 200 points\n🎉🎉🎉")
            Button(action: {}) {
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
    static var previews: some View {
        PointsView()
        PointsView()
            .preferredColorScheme(.dark)
        PointsView()
            .previewLayout(.fixed(width: 568, height: 320))
        PointsView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
