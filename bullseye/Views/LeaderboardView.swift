//
//  LeaderboardView.swift
//  bullseye
//
//  Created by Segun Konibire on 04/06/2021.
//

import SwiftUI

struct LeaderboardView: View {
    
    @Binding var isLeaderboardShowing: Bool
    
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                HeaderView(isLeaderboardShowing: $isLeaderboardShowing)
                LabelView()
                    .padding(.bottom, 2)
                RowView(index: 1, score: 10, date: Date())
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
            RoundedTextView(index: 1)
            Spacer()
            ScoreText(score: 500)
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            DateText(date: Date())
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
        }
        .background(RoundedRectangle(cornerRadius: .infinity)
                        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth))
        .padding(.leading)
        .padding(.trailing)
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
        .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}


struct LeaderboardView_Previews: PreviewProvider {
    
    static var isLeaderboardShowing = Binding.constant(false)
    
    static var previews: some View {
        LeaderboardView(isLeaderboardShowing: isLeaderboardShowing)
        LeaderboardView(isLeaderboardShowing: isLeaderboardShowing)
            .preferredColorScheme(.dark)
        LeaderboardView(isLeaderboardShowing: isLeaderboardShowing)
            .previewLayout(.fixed(width: 568, height: 320))
        LeaderboardView(isLeaderboardShowing: isLeaderboardShowing)
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
