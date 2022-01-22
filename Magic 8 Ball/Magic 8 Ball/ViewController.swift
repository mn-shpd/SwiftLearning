//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Wojciech Rosiński on 22/01/2022.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var ballImageView: UIImageView!
    
    let ballAnswers = [UIImage(named: "ball1"), UIImage(named: "ball2"), UIImage(named: "ball3"), UIImage(named: "ball4"), UIImage(named: "ball5"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAnswer()
    }
    
    func setAnswer() {
        ballImageView.image = ballAnswers[Int.random(in: 0...4)]
    }
    
    @IBAction func askButtonAction(_ sender: Any) {
        setAnswer()
    }
}

