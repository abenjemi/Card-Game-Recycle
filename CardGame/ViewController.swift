//
//  ViewController.swift
//  CardGame
//
//  Created by Amine Ben Jemia on 2/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    var player = 0
    var cpu = 0
//    var leftNum = 0
//    var rightNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftNum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)
        print("\(String(leftNum)) \(String(rightNum))")
        
        leftCard.image = UIImage(named: "card\(String(leftNum))")
        rightCard.image = UIImage(named: "card\(String(rightNum))")
        
        if leftNum > rightNum {
            player += 1
            playerScore.text = String(player)
        } else if rightNum > leftNum {
            cpu += 1
            cpuScore.text = String(cpu)
        }
    }
    
    
}

