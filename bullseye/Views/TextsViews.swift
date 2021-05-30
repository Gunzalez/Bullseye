//
//  TextsViews.swift
//  bullseye
//
//  Created by Segun Konibire on 30/05/2021.
//

import SwiftUI

struct InstructionView: View {
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

struct BigNumberView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(-1.0)
            .fontWeight(.black)
            .font(.largeTitle)
    }
}





struct TextsViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionView(text: "You make me feel like dancing")
            BigNumberView(text: "999")
        }
    }
}
