//
//  ViewController.swift
//  Project 1: Storm Viewer
//
//  Created by Veerababu Mulugu on 6/24/19.
//  Copyright © 2019 Veerababu Mulugu. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        let str = "veera babu mulugu"
        let reverse = String(str.reversed())
        print(reverse)
        
        
        
        
        let str1 = "Hello, world!"
        let reversed = String(str1.reversed())
        print(reversed)

        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try!fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
            
                
                pictures.append(item)
                //print(pictures)
            }
        }
        
        
        print(pictures)
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    
}

