//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Vanessa Chu on 2017-06-22.
//  Copyright © 2017 Vanessa Chu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessField: UITextField!
    @IBOutlet var guessResult: UILabel!
    
    
    @IBAction func guessButton(_ sender: Any){
        let randomNum = String(arc4random_uniform(6))
        
        if randomNum == guessField.text{
            guessResult.text = "You are right!"
        }else{
            guessResult.text = "You are wrong! It was a \(randomNum)"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

