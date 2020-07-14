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
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    
    @IBOutlet weak var playerRockButton: UIButton!
    @IBOutlet weak var playerPaperButton: UIButton!
    @IBOutlet weak var playerScissorsButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func playedRock(_ sender: Any) {
    }
    
    @IBAction func playedPaper(_ sender: Any) {
    }
    
    @IBAction func playedScissors(_ sender: Any) {
    }
    
    func updateUI() {
        
    }
}

