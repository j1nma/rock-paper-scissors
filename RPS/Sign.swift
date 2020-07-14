//
//  Sign.swift
//  RPS
//
//  Created by Juan Manuel Alonso on 14/07/2020.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    switch randomChoice.nextInt() {
        case 0: return Sign.rock
        case 1: return Sign.paper
        case 2: return Sign.scissors
        default: return Sign.rock // Should never get here
    }
}

enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
            case .rock: return "👊"
            case .paper: return "🖐"
            case .scissors: return "✌️"
        }
    }
    
    func compare(other: Sign) -> GameState {
        if self == other { return GameState.draw }
        
        if self == .rock {
            if other == .paper {
                return GameState.lose
            } else {
                return GameState.win
            }
        } else if self == .paper {
            if other == .rock {
                return GameState.win
            } else {
                return GameState.lose
            }
        } else {
            if other == .rock {
                return GameState.lose
            } else {
                return GameState.win
            }
        }
    }
}
