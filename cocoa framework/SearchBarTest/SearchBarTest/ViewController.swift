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
    
    // MARK : - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchActive) {
            return filtered.count
        }else{
            return data.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if(searchActive){
            cell.textLabel?.text = filtered[indexPath.row]
        } else {
            cell.textLabel?.text = data[indexPath.row];
        }
        
        return cell
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        self.searchActive = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        self.searchActive = false
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchActive = false
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.searchActive = false
        
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        self.filtered = data.filter({ (text) -> Bool in
            let tmp: NSString = text as NSString
            print(tmp)
            let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            print(range.location)
            return range.location != NSNotFound
        })
        
//        for text in filtered { print(text) }
        
        if(filtered.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        self.testTableView.reloadData()
    }
}
