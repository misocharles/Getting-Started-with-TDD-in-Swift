//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Incheol-iMac on 2016. 6. 7..
//  Copyright © 2016년 captv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
        }
    }
    var game: Game?
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        
        switch sender {
        case numberButton:
            play(Move.Number)
        case fizzButton:
            play(.Fizz)
        case buzzButton:
            play(.Buzz)
        case fizzBuzzButton:
            play(.FizzBuzz)
        default:
             print("Invalid selection")
        }
    }
}
