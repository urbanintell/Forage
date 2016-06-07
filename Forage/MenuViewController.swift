//
//  MenuViewController.swift
//  Forage
//
//  Created by Lusenii Kromah on 6/2/16.
//  Copyright © 2016 Derivative. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    
    let imagePicker = UIImagePickerController()
    
    @IBAction func takeImageButtonTapped(sender: UIButton) {
        
        if (UIImagePickerController.isSourceTypeAvailable(.Camera)) {
            
            
            
            imagePicker.delegate = self
            imagePicker.sourceType = .Camera
            imagePicker.allowsEditing = true
            
            presentViewController(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    
}
