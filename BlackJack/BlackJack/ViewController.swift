//
//  ViewController.swift
//  BlackJack
//
//  Created by Peter Oh on 1/10/18.
//  Copyright © 2018 Peter Oh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCountOne = 0
    
    var flipCountTwo = 0
    
    
    @IBOutlet weak var hitButton: UIButton!
    
    @IBOutlet weak var passButton: UIButton!
    
    @IBOutlet weak var outputMessage: UILabel!
    
    @IBOutlet weak var cardOne: UIButton!
    
    @IBOutlet weak var cardTwo: UIButton!
    
    @IBOutlet weak var dealerCardOne: UIButton!
    
    @IBOutlet weak var dealerCardTwo: UIButton!
    
    lazy var handOne = randomNumberOne()
    
    lazy var handTwo = randomNumber()
    
    lazy var handThree = randomNumberOne()
    
    lazy var handFour = randomNumber()
    
    lazy var handFive = randomNumber()
    
    var hitCounter = 0
    
    
    @IBAction func touchCardOne(_ sender: UIButton)
    {
        if flipCountOne == 0
        {
            let x = handOne
            cardOne.setTitle("\(x)", for: UIControlState.normal)
            cardOne.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            flipCountOne += 1
        }
        
        
    }
    
    @IBAction func touchCardTwo(_ sender: UIButton)
    {
        if flipCountTwo == 0
        {
            let y = handTwo
            cardTwo.setTitle("\(y)", for: UIControlState.normal)
            cardTwo.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            flipCountTwo += 1
        }
    }
    
    @IBAction func touchHitButton(_ sender: UIButton)
    {
        
        if hitCounter == 0
        {
            let total = handOne + handTwo + handThree
            if total > 21
            {
                outputMessage.text = " Your new card is a \(handThree). You bust! Game over, the dealer wins."
                dealerCardOne.setTitle("J", for: UIControlState.normal)
                dealerCardOne.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
                
                dealerCardTwo.setTitle("9", for: UIControlState.normal)
                dealerCardTwo.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            }
            else
            {
                outputMessage.text = " Your new card is a \(handThree). Your total is \(total). Would you like to HIT or PASS?"
            }
            
        }
        
        if hitCounter == 1
        {
            let total = handOne + handTwo + handThree + handFour
            if total > 21
            {
                outputMessage.text = " Your new card is a \(handFour). You bust! Game over, the dealer wins."
                dealerCardOne.setTitle("J", for: UIControlState.normal)
                dealerCardOne.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
                
                dealerCardTwo.setTitle("9", for: UIControlState.normal)
                dealerCardTwo.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
                
            }
            else
            {
                outputMessage.text = " Your new card is a \(handFour). Your total is \(total). Would you like to HIT or PASS?"
            }
            
        }
        
        if hitCounter == 2
        {
            let total = handOne + handTwo + handThree + handFour + handFive
            if total > 21
            {
                outputMessage.text = " Your new card is a \(handFive). You bust! Game over, the dealer wins."
                dealerCardOne.setTitle("J", for: UIControlState.normal)
                dealerCardOne.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
                
                dealerCardTwo.setTitle("9", for: UIControlState.normal)
                dealerCardTwo.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            }
            else
            {
                outputMessage.text = " Your new card is a \(handFive). Your total is \(total). Would you like to HIT or PASS?"
            }
            
        }
        hitCounter += 1
    }
    
    
    @IBAction func touchPassButton(_ sender: UIButton)
    {
        
        dealerCardOne.setTitle("J", for: UIControlState.normal)
        dealerCardOne.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        
        dealerCardTwo.setTitle("9", for: UIControlState.normal)
        dealerCardTwo.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        
        
        displayGameOverMessage()
        
    }
    
    func displayGameOverMessage()
    {
        if hitCounter == 0
        {
            let total = handOne + handTwo
            if total > 19
            {
                outputMessage.text = " You beat the dealer's hand! You won! Congratulations!"
            }
            else
            {
                outputMessage.text = " Oh no, the dealer has a better hand. Sorry, you lose."
            }
        }
        if hitCounter == 1
        {
            let total = handOne + handTwo + handThree
            if total > 19
            {
                outputMessage.text = " You beat the dealer's hand! You won! Congratulations!"
            }
            else
            {
                outputMessage.text = " Oh no, the dealer has a better hand. Sorry, you lose."
            }
            
        }
        if hitCounter == 2
        {
            let total = handOne + handTwo + handThree + handFour
            if total > 19
            {
                outputMessage.text = " You beat the dealer's hand! You won! Congratulations!"
            }
            else
            {
                outputMessage.text = " Oh no, the dealer has a better hand. Sorry, you lose."
            }
            
        }
        
        if hitCounter <= 3
        {
            let total = handOne + handTwo + handThree + handFour + handFive
            if total > 19
            {
                outputMessage.text = " You beat the dealer's hand! You won! Congratulations!"
            }
            else
            {
                outputMessage.text = " Oh no, the dealer has a better hand. Sorry, you lose."
            }
            
        }
        
        
    }
    
    func randomNumber() -> Int
    {
        let randomNum = Int(arc4random_uniform(UInt32(9))) + 1
        return randomNum
        
    }
    
    func randomNumberOne() -> Int
    {
        let randomNum = Int(arc4random_uniform(UInt32(5))) + 5
        return randomNum
        
    }
    
}

