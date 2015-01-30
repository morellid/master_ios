//
//  ViewController.swift
//  motion
//
//  Created by Davide Morelli on 30/01/15.
//  Copyright (c) 2015 BioBeats. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    var motionManager : CMMotionManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        motionManager = CMMotionManager()
        if let mm = motionManager
        {
            if mm.deviceMotionAvailable
            {
                NSLog("device available")
                if mm.gyroAvailable
                {
                    mm.gyroUpdateInterval = 1.0/10.0
                    mm.startGyroUpdatesToQueue(NSOperationQueue(), withHandler: { (gyroData, error) -> Void in
                        NSLog("x=%f y=%f z=%f",
                            gyroData.rotationRate.x,
                            gyroData.rotationRate.y,
                            gyroData.rotationRate.z)
                        
                    })
                }

            } else
            {
                NSLog("device NOT available")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

