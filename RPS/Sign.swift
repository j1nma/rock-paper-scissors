//
//  Sign.swift
//  RPS
//
//  Created by Juan Manuel Alonso on 14/07/2020.
//

import Foundation

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
