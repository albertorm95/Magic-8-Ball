//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by econfig on 10/13/17.
//  Copyright © 2017 Alberto Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeBall()
    }
    
    func randomIndex() -> Int {
        return Int(arc4random_uniform(5))
    }
    
    func changeBall() {
        imageView.image = UIImage(named: ballArray[randomIndex()])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBall()
    }


}

