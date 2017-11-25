//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Martin Demiddel on 25.11.17.
//  Copyright © 2017 Martin Demiddel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageArray : Array = [
        "ball1",
        "ball2",
        "ball3",
        "ball4",
        "ball5",
    ]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPress(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: imageArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

