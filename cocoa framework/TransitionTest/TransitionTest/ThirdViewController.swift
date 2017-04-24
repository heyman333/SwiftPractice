//
//  ThirdViewController.swift
//  TransitionTest
//
//  Created by HanYoungsoo on 2017. 4. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goMainBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
