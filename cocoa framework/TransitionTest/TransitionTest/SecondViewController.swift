//
//  SecondViewController.swift
//  TransitionTest
//
//  Created by HanYoungsoo on 2017. 4. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onBackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
