//
//  ViewController.swift
//  SearchBarTest
//
//  Created by HanYoungsoo on 2017. 4. 25..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource, UITabBarDelegate {
    @IBOutlet weak var testTableView: UITableView!
    @IBOutlet weak var testSearchBar: UISearchBar!
    
    var searchActive : Bool = false
    var data = ["San Francisco","New York","San Jose","Chicago","Los Angeles","Austin","Seattle"]
    var filtered:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "
    }

}

