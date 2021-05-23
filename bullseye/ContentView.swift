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
                    .font(.footnote)
                    .lineSpacing(4.0)
                    .multilineTextAlignment(.center)
                Text("89")
                HStack
                {
                    Text("1")
                    Slider(value: $sliderValue, in: 1...100)
                    Text("100")
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
