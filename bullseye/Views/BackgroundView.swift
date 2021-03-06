//
//  BackgroundView.swift
//  bullseye
//
//  Created by Segun Konibire on 31/05/2021.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(RingsView())
        
    }
}

struct TopView: View {
    @Binding var game: Game
    @State private var isLeaderboardShowing = false
    
    var body: some View {
        HStack {
            Button(action: {
                game.startNewGame()
            }) {
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            }
            Spacer()
            Button(action: {
                isLeaderboardShowing = true
            }) {
                RoundedImageViewFilled(systemName: "list.dash")
            }
            .sheet(isPresented: $isLeaderboardShowing, onDismiss: {}, content: {
                LeaderboardView(isLeaderboardShowing: $isLeaderboardShowing, game: $game)
            })
        }
    }
}


struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
    }
}

struct NumberView: View {
    var title: String;
    var text: String;
    
    var body: some View {
        VStack {
            LabelText(text: title)
                .padding(2)
            RoundedRectTextView(text: text)
        }
    }
}

struct RingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack{
            Color("Background")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ForEach(1..<6){ ring in
                let size = CGFloat(ring * 100)
                let opacityFactor = colorScheme == .dark ? 0.1 : 0.3
                Circle()
                    .stroke(lineWidth: 20)
                    .fill(RadialGradient(gradient: Gradient(colors: [Color("RingColor").opacity(0.8 * opacityFactor), Color("RingColor").opacity(0)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 100, endRadius: 300))
                    .frame(width: size, height: size)
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
