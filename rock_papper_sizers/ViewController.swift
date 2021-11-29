//
//  ViewController.swift
//  rock_papper_sizers
//
//  Created by Grant Spraker on 11/11/21.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var comImage: UIImageView!
    
    @IBOutlet weak var playImage: UIImageView!
    
    //has rock, paper, and scissors on it
    @IBOutlet weak var picesOfGame: UIStackView!
    
    @IBOutlet var picesGame: [UIImageView]!

    @IBOutlet weak var winOrLoss: UILabel!
    
    var images:[UIImage] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    var playerSelect = 5
    
    @IBAction func tapToWin(_ sender: UITapGestureRecognizer)
    {
    
        
        let rock = UIImage(named: "rock")
        let paper = UIImage(named: "paper")
        let scissors = UIImage(named: "scissors")
        
        images = [rock, paper, scissors] as! [UIImage]
        
        let randomNumber = Int.random(in: 0...2)
        var comSelect = images[randomNumber]
        comImage.image = comSelect
        
        let selectedPoint = sender.location(in: picesOfGame)
        
        for label in picesGame
    {
            if
                label.frame.contains(selectedPoint)
            {
                playerSelect = label.tag
                
                playImage.image = images[playerSelect]
                    
                    print(playerSelect)
            }
        
            
    }
        
        
        if playerSelect == randomNumber
        {
            winOrLoss.text = "Tie"

        }else if playerSelect == 2 && randomNumber == 0
        {
            winOrLoss.text = "loss"

        }else if playerSelect == 1 && randomNumber == 2
        {
            winOrLoss.text = "loss"

        }else if playerSelect == 0 && randomNumber == 1
        {
            winOrLoss.text = "loss"

        }else if playerSelect == 0 && randomNumber == 2
        {
            winOrLoss.text = "Win"
        }else if playerSelect == 1 && randomNumber == 0
        {
            winOrLoss.text = "Win"
        }else if playerSelect == 2 && randomNumber == 1
        {
            winOrLoss.text = "Win"
        }
    }
}
