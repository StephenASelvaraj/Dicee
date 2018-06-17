//
//  ViewController.swift
//  Dicee
//
//  Created by Stephen Selvaraj on 6/8/18.
//  Copyright © 2018 Stephen Selvaraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var dice1number: UIImageView!
    
    @IBOutlet weak var dice2number: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func RollDice(_ sender: UIButton) {

        getRandomNumber()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        getRandomNumber()
        
    }
    
    func getRandomNumber () {
//        let dicenumber = Int(arc4random_uniform(6));
//        return dicenumber
            var dicenumber = "dice"
        
            dicenumber = dicenumber + String(Int(arc4random_uniform(5))+1)
            print(dicenumber)
            dice1number.image = UIImage(named: dicenumber)
        
            dicenumber = "dice"
            dicenumber = dicenumber + String(Int(arc4random_uniform(5))+1)
            print(dicenumber)
            dice2number.image = UIImage(named: dicenumber)
    }
    
}

