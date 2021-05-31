//
//  Game.swift
//  bullseye
//
//  Created by Segun Konibire on 24/05/2021.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 999
    var round = 3
    
    func points(sliderValue: Int) -> Int {
        // let diff = sliderValue == self.target ? 0 : abs(sliderValue - self.target);
        // return 100 - diff;
        100 - abs(sliderValue - target);
    }
}
