//
//  DetailsViewViewController.swift
//  Project 1: Storm Viewer
//
//  Created by Veerababu Mulugu on 6/28/19.
//  Copyright © 2019 Veerababu Mulugu. All rights reserved.
//

import UIKit

class DetailsViewViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectImage:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = selectImage
    
        navigationItem.largeTitleDisplayMode = .never//

                navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        
        if let imageToLoad = selectImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @objc func shareTapped() {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
}
