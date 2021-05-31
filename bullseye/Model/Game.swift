//
//  Game.swift
//  bullseye
//
//  Created by Segun Konibire on 24/05/2021.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
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
    }
    

}
