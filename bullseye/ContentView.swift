//
//  ContentView.swift
//  bullseye
//
//  Created by Segun Konibire on 23/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue: Double = 60
    
    var body: some View {
        VStack {
            VStack{
                Text("🎯🎯🎯\nPut the bullseye as close as you can to")
                    .kerning(2.0)
                    .bold()
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    .font(.footnote)
                    .lineSpacing(4.0)
                    .multilineTextAlignment(.center)
                Text("89")
                    .kerning(-1.0)
                    .fontWeight(.black)
                    .font(.largeTitle)
                HStack
                {
                    Text("1").bold().font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                    Slider(value: .constant(89.0), in: 1...100)
                    Text("100").bold().font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                }
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Hit Me!")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
