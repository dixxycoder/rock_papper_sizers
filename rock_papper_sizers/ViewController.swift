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
    
    var rock = 0
    var papper = 1
    var scissors = 2
 
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func tapToWin(_ sender: UITapGestureRecognizer)
    {
        playImage.image = UIImage(named: "___")
    }
    
}

