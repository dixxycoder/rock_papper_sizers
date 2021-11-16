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
    
    @IBOutlet weak var rockLook: UIImageView!
    
    @IBOutlet weak var papperLook: UIImageView!
    
    @IBOutlet weak var scissorsLook: UIImageView!
    
//     rock = 0
//     papper = 1
//     scissors = 2
    
    let randomNumber = Int.random(in: 0...2)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        rockLook.image = UIImage(named: "0")
        papperLook.image = UIImage(named: "1")
        scissorsLook.image = UIImage(named: "2")
        
        comImage.image = UIImage(named: "\(randomNumber)")

    }

    @IBAction func tapToWin(_ sender: UITapGestureRecognizer)
    {
        
        playImage.image = UIImage(named: "\(randomNumber)")
    }
    
}

