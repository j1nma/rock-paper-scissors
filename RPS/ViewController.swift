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

    @IBOutlet weak var appSignLabel: UILabel!
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    @IBOutlet weak var playerRockButton: UIButton!
    @IBOutlet weak var playerPaperButton: UIButton!
    @IBOutlet weak var playerScissorsButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func playedRock(_ sender: Any) {
        play(.rock)
        updateUI()
    }
    
    @IBAction func playedPaper(_ sender: Any) {
        play(.paper)
        updateUI()
    }
    
    @IBAction func playedScissors(_ sender: Any) {
        play(.scissors)
        updateUI()
    }
    
    @IBAction func playAgain(_ sender: Any) {
        gameStatus = .start
        viewDidLoad()
    }
    
    func updateUI() {
        gameStatusLabel.text = gameStatus.message
        self.view.backgroundColor = getColor(gameStatus)
        
        if gameStatus == .start {
            appSignLabel.text = "🤖"
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
    
    func play(_ playerSign: Sign) {
        let appSign = randomSign()
        appSignLabel.text = appSign.emoji
        
        playerRockButton.isEnabled = false
        playerPaperButton.isEnabled = false
        playerScissorsButton.isEnabled = false
        
        playerRockButton.isHidden = true
        playerPaperButton.isHidden = true
        playerScissorsButton.isHidden = true
        
        switch playerSign {
            case .rock:
                playerRockButton.isHidden = false
            case .paper:
                playerPaperButton.isHidden = false
            case .scissors:
                playerScissorsButton.isHidden = false
        }
        
        gameStatus = playerSign.compare(other: appSign)
        
        playAgainButton.isHidden = false
    }
}

