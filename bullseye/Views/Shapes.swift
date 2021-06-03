//
//  Shapes.swift
//  bullseye
//
//  Created by Segun Konibire on 03/06/2021.
//

import SwiftUI

struct Shapes: View {
    
    @State var isWide = false;
    
    var body: some View {
        VStack{
            if !isWide {
            Circle()
                .strokeBorder(Color.blue, lineWidth: 10)
                .frame(height: 100)
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.accentColor)
                .frame(width: CGFloat(isWide ? 200 : 100), height: 100)
                .animation(.easeInOut)
            
            Capsule()
                .fill(Color.pink)
                .frame(width: CGFloat(isWide ? 200 : 100), height: 100)
            
            Ellipse()
                .fill(Color.green)
                .frame(width: CGFloat(isWide ? 200 : 100), height: 100)
            
            Button(action: {
//                isWide = !isWide
                withAnimation {
                    isWide.toggle()
                }
                    
            }) {
                Text("Animate")
            }

        }
        .background(Color.gray)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
        
    }
}
