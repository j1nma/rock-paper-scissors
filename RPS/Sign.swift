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
}
