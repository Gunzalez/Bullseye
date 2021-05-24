//
//  File.swift
//  bullseye
//
//  Created by Segun Konibire on 24/05/2021.
//

import Foundation

struct Game {
    var target: Int = 42
    var score: Int = 200
    var round: Int = 2
    
    func points(sliderValue: Int) -> Int {
        let diff = sliderValue == self.target ? 0 : abs(sliderValue - self.target);
        return 100 - diff;
    }
}