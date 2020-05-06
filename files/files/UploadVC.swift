//
//  UploadVC.swift
//  files
//
//  Created by Esraa Eid on 5/5/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
//

import UIKit

class UploadVC: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var ImageSelected: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func UploadClicked(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = .photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true){
            //After its presented
        }
    }
    
//image picker handling if its not selected
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[.originalImage] as? UIImage{
            ImageSelected.image = image
        }
        else{
            //error message
        }
        self.dismiss(animated: true, completion: nil)
    }
    //TODO:- upload multiple photos
    //TODO:- upload from cloud storage
    //TODO:- save uploaded photos

}
