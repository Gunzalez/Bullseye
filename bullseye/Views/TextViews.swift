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
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
            .frame(width: 35.0)
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

struct BodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .lineSpacing(12.0)
            .multilineTextAlignment(.center)
    }
}

struct ButtonText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .font(.headline)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 12)
                            .fill(Color.accentColor))
    }
}

struct ScoreText: View {
    var score: Int
    
    var body: some View {
        Text(String(score))
            .foregroundColor(Color("TextColor"))
            .font(.title3)
            .kerning(-0.2)
            .bold()
    }
}

struct DateText: View {
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
            .foregroundColor(Color("TextColor"))
            .font(.title3)
            .kerning(-0.2)
            .bold()
    }
}

struct BigBoldText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .kerning(2.2)
            .fontWeight(.black)
            .textCase(.uppercase)
    }
}

struct TextsViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "You make me feel like dancing")
            BigNumberText(text: "999")
            SliderText(text: "100")
            LabelText(text: "Score")
            BodyText(text: "You scored 200 points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 459)
            DateText(date: Date())
            BigBoldText(text: "LEADERBOARD")
        }.padding(20)
    }
}
