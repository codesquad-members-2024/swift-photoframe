//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 조호근 on 3/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var renamefirstLabel: UILabel!
    @IBOutlet var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.renamefirstLabel.text = "KAI의 사진액자"
        self.firstDescription.text = "KAI의 사진액자 설명입니다."
        
        
        let fullText = renamefirstLabel.text ?? ""
        let attributedString = NSMutableAttributedString(string: fullText)
        
        let range1 = (fullText as NSString).range(of: "KAI")
        
        attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: range1)
        
        let range2 = (fullText as NSString).range(of: "액자")
        
        attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: range2)
        
        renamefirstLabel.attributedText = attributedString
        
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.renamefirstLabel.textColor = UIColor.blue
        self.renamefirstLabel.backgroundColor = UIColor.yellow
        self.renamefirstLabel.alpha = 0.5
    }
}

