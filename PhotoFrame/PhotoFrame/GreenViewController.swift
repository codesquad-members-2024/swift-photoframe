//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by 조호근 on 3/7/24.
//

import UIKit

class GreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        guard let yellowViewController = self.storyboard?.instantiateViewController(withIdentifier: "yellow") as? YellowViewController else { return }
        
        self.present(yellowViewController, animated: true)
    }
    
    
    
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
