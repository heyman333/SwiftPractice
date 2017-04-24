//
//  ViewController.swift
//  TransitionTest
//
//  Created by HanYoungsoo on 2017. 4. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onNextBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "TransitSegue", sender: nil)
    }
    
    @IBAction func goThirdBtn(_ sender: UIButton) {
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        thirdVC?.modalTransitionStyle = .flipHorizontal
        self.present(thirdVC!, animated: true, completion: nil)
        
    }
    

}

