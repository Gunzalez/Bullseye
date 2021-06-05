//
//  LeaderboardView.swift
//  bullseye
//
//  Created by Segun Konibire on 04/06/2021.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        SingleRowView(index: 1, score: 10, date: Date())
    }
}

struct SingleRowView: View {
    
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


struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
        LeaderboardView()
            .preferredColorScheme(.dark)
        LeaderboardView()
            .previewLayout(.fixed(width: 568, height: 320))
        LeaderboardView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
