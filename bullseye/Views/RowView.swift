//
//  RowView.swift
//  bullseye
//
//  Created by Segun Konibire on 04/06/2021.
//

import SwiftUI


struct PositionView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(Circle()
                        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth))
    }
}

struct DateView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
    }
}


struct ScoreView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
            .bold()
    }
}


struct RowView: View {
    var body: some View {
        HStack(spacing: 10) {
            PositionView(text: "1")
//                .offset(x: -20)
                .padding(.leading, -20.0)
            Spacer()
            ScoreView(text: "302")
            Spacer()
            DateView(text: "16/02/2021")
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 20)
            .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            .frame(width: .infinity, height: Constants.General.roundedViewLength))
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
        RowView()
            .preferredColorScheme(.dark)
    }
}
