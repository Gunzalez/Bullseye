//
//  LeaderboardView.swift
//  bullseye
//
//  Created by Segun Konibire on 04/06/2021.
//

import SwiftUI

struct LeaderboardView: View {
    
    @Binding var isLeaderboardShowing: Bool
    @Binding var game: Game
    
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                HeaderView(isLeaderboardShowing: $isLeaderboardShowing)
                    .padding(.top)
                LabelView()
                ScrollView {
                    VStack{
                        ForEach(game.leaderboardEntries.indices) { i in
                            let leaderboardEntry = game.leaderboardEntries[i]
                            RowView(index: i+1, score: leaderboardEntry.score, date: leaderboardEntry.date)
                        }
                    }
                }
            }
        }
    }
}

struct RowView: View {
    
    let index: Int
    let score: Int
    let date: Date
    
    var body: some View {
        HStack{
            RoundedTextView(index: index)
            Spacer()
            ScoreText(score: score)
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            DateText(date: date)
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
        }
        .background(RoundedRectangle(cornerRadius: .infinity)
                        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth))
        .padding(.leading)
        .padding(.trailing)
        .padding(.bottom, 2)
        .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}

struct HeaderView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Binding var isLeaderboardShowing: Bool
    
    var body: some View {
        ZStack {
            HStack {
                if(verticalSizeClass == .regular && horizontalSizeClass == .compact){
                    BigBoldText(text: "Leaderboard")
                        .padding(.leading)
                    Spacer()
                } else {
                    BigBoldText(text: "Leaderboard")
                }
            }
            HStack{
                Spacer()
                Button(action: {
                    isLeaderboardShowing = false
                }) {
                    RoundedImageViewFilled(systemName: "xmark")
                        .padding(.trailing)
                }
            }
        }
    }
}

struct LabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.General.roundedViewLength)
            Spacer()
            LabelText(text: "Score")
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            LabelText(text: "Date")
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
        }
        .padding(.leading)
        .padding(.trailing)
        .padding(.bottom, 2)
        .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}


struct LeaderboardView_Previews: PreviewProvider {
    
    static var isLeaderboardShowing = Binding.constant(false)
    static var game = Binding.constant(Game(loadTestData: true))
    
    static var previews: some View {
        LeaderboardView(isLeaderboardShowing: isLeaderboardShowing, game: game)
        LeaderboardView(isLeaderboardShowing: isLeaderboardShowing, game: game)
            .preferredColorScheme(.dark)
        LeaderboardView(isLeaderboardShowing: isLeaderboardShowing, game: game)
            .previewLayout(.fixed(width: 568, height: 320))
        LeaderboardView(isLeaderboardShowing: isLeaderboardShowing, game: game)
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
