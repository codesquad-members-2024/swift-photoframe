//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 조호근 on 3/7/24.
//

import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomNumber = Int.random(in: 1...22)
        let imageName = String(format: "%02d", randomNumber) + ".jpg"
        
        self.photoImageView.image = UIImage(named: imageName)
    }
    
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        
        self.present(picker, animated: true)
    }
}

extension SecondViewController: UIImagePickerControllerDelegate {
    // 이미지 피커에서 이미지를 선택했을 때 호출되는 메서드
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("이미지 선택")
        
        picker.dismiss(animated: true) {
            let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            self.photoImageView.image = image
        }
    }
    
    // 이미지 피커에서 이미지를 선택하지 않고 취소했을 때 호출되는 메소드
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("이미지 선택하지않고 취소한 경우")
        
        self.dismiss(animated: true) { () in
            // 알림 창 호출
            let alert = UIAlertController(title: "", message: "이미지 선택이 취소되었습니다.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .cancel))
            self.present(alert, animated: false)
        }
    }
}

