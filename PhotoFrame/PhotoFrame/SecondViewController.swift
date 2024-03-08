//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 조호근 on 3/7/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomNumber = Int.random(in: 1...22)
        let imageName = String(format: "%02d", randomNumber) + ".jpg"
        
        self.photoImageView.image = UIImage(named: imageName)
    }
}

