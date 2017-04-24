//
//  TableViewController.swift
//  TransitionTest
//
//  Created by HanYoungsoo on 2017. 4. 24..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        
        cell.textLabel?.text = String(indexPath.row)
        
        return cell
        
    }

}
