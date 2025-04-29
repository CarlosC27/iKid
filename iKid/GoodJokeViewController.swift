//
//  GoodJokeViewController.swift
//  iKid
//
//  Created by Carlos Carrillo-Sandoval on 4/28/25.
//

import Foundation

import UIKit

class  GoodJokeViewController: UIViewController {
   
    @IBOutlet weak var jokeImg: UIImageView! 
    //    
    @IBOutlet weak var nextButton: UIButton!
    var goodJokeShowed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func setBoldButtonTitle(text: String) {
          let attributes: [NSAttributedString.Key: Any] = [
              .font: UIFont.boldSystemFont(ofSize: 28)
          ]
          let attributedTitle = NSAttributedString(string: text, attributes: attributes)
          nextButton.setAttributedTitle(attributedTitle, for: .normal)
      }
    
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        goodJokeShowed = !goodJokeShowed
        
        
        if goodJokeShowed{
            let switchImg = UIImage(named: "good-joke-img-2")
            
            setBoldButtonTitle(text: "Back")
            UIView.transition(with: jokeImg, duration: 0.7, options: .transitionFlipFromLeft, animations: {self.jokeImg.image = switchImg}, completion: nil)
            
        }else{
            let switchImg = UIImage(named: "good-joke-img-1")
            
            setBoldButtonTitle(text: "Next")
            UIView.transition(with: jokeImg, duration: 0.7, options: .transitionFlipFromLeft, animations: {self.jokeImg.image = switchImg}, completion: nil)
        }
    }
    
    
}
