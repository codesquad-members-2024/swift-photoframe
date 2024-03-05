//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 조호근 on 3/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.firstLabel.text = "KAI의 사진액자"
        self.firstDescription.text = "KAI의 사진액자 설명입니다."
        
        
        let fullText = firstLabel.text ?? ""
        let attributedString = NSMutableAttributedString(string: fullText)
        
        let range1 = (fullText as NSString).range(of: "KAI")
        
        attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: range1)
        
        let range2 = (fullText as NSString).range(of: "액자")
        
        attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: range2)
        
        firstLabel.attributedText = attributedString
        
    }
    
    
    
}

