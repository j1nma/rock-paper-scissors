//
//  ViewController.swift
//  RPS
//
//  Created by Juan Manuel Alonso on 14/07/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    var gameStatus: GameState = .start

    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    @IBOutlet weak var playerRockButton: UIButton!
    @IBOutlet weak var playerPaperButton: UIButton!
    @IBOutlet weak var playerScissorsButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func playedRock(_ sender: Any) {
        
        updateUI()
    }
    
    @IBAction func playedPaper(_ sender: Any) {
        
        updateUI()
    }
    
    @IBAction func playedScissors(_ sender: Any) {
        
        updateUI()
    }
    
    @IBAction func playAgain(_ sender: Any) {
        updateUI()
    }
    
    func updateUI() {
        gameStatusLabel.text = gameStatus.message
        self.view.backgroundColor = getColor(gameStatus)
        
        if gameStatus == .start {
            appSign.text = "🤖"
            playAgainButton.isHidden = true
            playerRockButton.isEnabled = true
            playerPaperButton.isEnabled = true
            playerScissorsButton.isEnabled = true
            playerRockButton.isHidden = false
            playerPaperButton.isHidden = false
            playerScissorsButton.isHidden = false
        }
    }
    
    func getColor(_ gameStatus: GameState) -> UIColor {
        switch gameStatus {
        case .start:
            return .gray
        case .win:
            return .green
        case .lose:
            return .red
        case .draw:
            return .blue
        }
    }
}

