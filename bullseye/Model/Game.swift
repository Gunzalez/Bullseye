//
//  Game.swift
//  bullseye
//
//  Created by Segun Konibire on 24/05/2021.
//

import Foundation

struct LeaderboardEntry {
    var score: Int
    var date: Date
}

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var canRestart = true
    var leaderboardEntries: [LeaderboardEntry] = [];
    
    init(loadTestData: Bool = false) {
        if loadTestData {
            leaderboardEntries.append(LeaderboardEntry(score: 100, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 27, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 40, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 210, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 119, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 94, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 290, date: Date()))
        }
    }
    
    func points(sliderValue: Int) -> Int {
        let diff = abs(sliderValue - target)
        let points = 100 - diff
        var bonus = 0
        switch diff {
        case 0:
            bonus = 100
        case 1...2:
            bonus = 50
        default:
            bonus = 0
        }
        return points + bonus
    }
    
    mutating func startNewRound(points: Int) {
        score = score + points
        round = round + 1
        target = Int.random(in: 1...100)
        addToLeaderboard(points: points)
    }
    
    mutating func startNewGame(){
        if canRestart {
            score = 0
            round = 1
            target = Int.random(in: 1...100)
            leaderboardEntries = []
        }
    }
    
    mutating func addToLeaderboard(points: Int) {
        leaderboardEntries.append(LeaderboardEntry(score: points, date: Date()))
        leaderboardEntries.sort { $0.score > $1.score }
    }
    
}
