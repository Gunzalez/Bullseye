//
//  RoundedViews.swift
//  bullseye
//
//  Created by Segun Konibire on 30/05/2021.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(Circle()
                        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2))
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(Circle()
                 .fill(Color("ButtonFilledBackgroundColor")))
            
    }
}

struct RoundedRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .font(.title2)
            .bold()
            .kerning(-0.2)
            .frame(width: 68, height: 57)
            .overlay(RoundedRectangle(cornerRadius: 21.1)
                        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2)
            )
    }
}



struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10){
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedRectTextView(text: "9")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
