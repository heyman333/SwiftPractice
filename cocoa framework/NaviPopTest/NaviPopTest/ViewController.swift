//
//  ViewController.swift
//  NaviPopTest
//
//  Created by HanYoungsoo on 2017. 5. 1..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindVC(_ segue: UIStoryboardSegue) {
        print("하이!")
        
    }
}

