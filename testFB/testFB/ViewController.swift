//
//  ViewController.swift
//  testFB
//
//  Created by Davide Morelli on 06/02/15.
//  Copyright (c) 2015 BioBeats. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func postOnFB(sender: AnyObject) {
        var fb = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        fb.setInitialText("ciao dal corso iOS")
        fb.addImage(UIImage(named: "tate.jpg"))
        self.presentViewController(fb, animated: true) { () -> Void in
            //
        }
    }

}

