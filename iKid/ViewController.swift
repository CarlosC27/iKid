//
//  ViewController.swift
//  iKid
//
//  Created by Carlos Carrillo-Sandoval on 4/28/25.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var goodJokeImg: UIImageView!
    @IBOutlet weak var punJokeImg: UIImageView!
    @IBOutlet weak var dadJokeImg: UIImageView!
    @IBOutlet weak var knockKnockJokeLabel: UILabel!
    
    var goodJokeShowed: Bool = false
    var punJokeShowed: Bool = false
    var dadJokeShowed: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func goodJokeButtonClicked(_ sender: Any) {
        goodJokeShowed = !goodJokeShowed
        
        let switchImg = goodJokeShowed ? UIImage(named: "good-joke-img-2") : UIImage(named: "good-joke-img-2")
        
        UIView.transition(with: goodJokeImg, duration: 0.7, options: .transitionFlipFromLeft, animations: {self.goodJokeImg.image = switchImg}, completion: nil)
    }
    
}

