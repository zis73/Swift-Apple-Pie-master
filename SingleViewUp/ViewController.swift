//
//  ViewController.swift
//  SingleViewUp
//
//  Created by student on 29.03.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ThreeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled=false;
    }
    var listOfWords=["Эмилия", "Луиза"]
    let incorrectMovesAllowed=7
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    var currentGame:Game!
    func newRound(){
        let newWord = listOfWords.removeFirst()
        currentGame=Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
        func updateUI(){
            let name="Tree \(currentGame.incorrectMovesRemaining)"
            ThreeImageView.image = UIImage(named: name)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

