//
//  TextsViews.swift
//  bullseye
//
//  Created by Segun Konibire on 30/05/2021.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(2.0)
            .bold()
            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            .font(.footnote)
            .lineSpacing(4.0)
            .multilineTextAlignment(.center)
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(-1.0)
            .fontWeight(.black)
            .font(.largeTitle)
    }
}

struct SliderText: View {
    var text: String
    
    var body: some View {
        Text(text).foregroundColor(Color("TextColor")).bold().font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
    }
}

struct LabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .bold()
            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            .font(.caption)
    }
}


struct TextsViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "You make me feel like dancing")
            BigNumberText(text: "999")
            SliderText(text: "100")
            LabelText(text: "Score")
        }
    }
}
