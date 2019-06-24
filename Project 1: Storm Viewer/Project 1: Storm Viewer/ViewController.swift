//
//  ViewController.swift
//  Project 1: Storm Viewer
//
//  Created by Veerababu Mulugu on 6/24/19.
//  Copyright © 2019 Veerababu Mulugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    
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


}

