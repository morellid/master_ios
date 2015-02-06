//
//  ViewController.swift
//  testPicture
//
//  Created by Davide Morelli on 06/02/15.
//  Copyright (c) 2015 BioBeats. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var img: UIImageView!
    @IBAction func takePicture(sender: AnyObject) {
        var controller = UIImagePickerController()
        controller.delegate = self
        controller.allowsEditing = true
        controller.sourceType = UIImagePickerControllerSourceType.Camera
        self.presentViewController(controller, animated: true) { () -> Void in
            //
        }
    
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        NSLog("l'utente ha fatto la foto")
        self.img.image = image
        picker.dismissViewControllerAnimated(true, completion: { () -> Void in
            //
        })
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        NSLog("l'utente ha annullato")
        picker.dismissViewControllerAnimated(true, completion: { () -> Void in
            //
        })
     }


}

