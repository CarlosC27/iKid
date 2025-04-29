//
//  KnockKnockJokeViewController.swift
//  iKid
//
//  Created by Carlos Carrillo-Sandoval on 4/28/25.
//
 
import UIKit

class  KnockKnockJokeViewController: UIViewController {
   
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var jokeStep = 0
    let jokeSteps = ["Knock Knock!!!! 🚪✊🏼🚪✊🏼", "Who's There???😲", "Doughnut🍩", "Doughnut Who???😲🍩", "Doughnut Mess With Me!!!😤🍩"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        jokeLabel.text = jokeSteps[jokeStep]
//        nextButton.setTitle("Next", for: .normal)
        setBoldButtonTitle(text: "Next")
        
    }
    
    func setBoldButtonTitle(text: String) {
          let attributes: [NSAttributedString.Key: Any] = [
              .font: UIFont.boldSystemFont(ofSize: 28)
          ]
          let attributedTitle = NSAttributedString(string: text, attributes: attributes)
          nextButton.setAttributedTitle(attributedTitle, for: .normal)
      }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        if jokeStep == jokeSteps.count-1{
            jokeStep = 0
            setBoldButtonTitle(text: "Next")
        }else{
            jokeStep += 1
            if jokeStep == jokeSteps.count - 1{
                setBoldButtonTitle(text: "Back")
            }
        }
        
        UIView.transition(with: jokeLabel, duration: 0.7, options: .transitionFlipFromLeft, animations: {self.jokeLabel.text = self.jokeSteps[self.jokeStep]}, completion: nil)
    }
    
}
