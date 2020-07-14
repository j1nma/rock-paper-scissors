//
//  GameState.swift
//  RPS
//
//  Created by Juan Manuel Alonso on 14/07/2020.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var message: String {
        switch self {
        case .start:
            return "Rock, paper or scissors?"
        case .win:
            return "Yay! You win!"
        case .lose:
            return "Oops, you lose!"
        case .draw:
            return "It's a draw!"
        }
    }
}
