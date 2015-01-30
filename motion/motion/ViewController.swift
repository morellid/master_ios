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
                mm.accelerometerUpdateInterval = 1.0/10.0
                mm.startAccelerometerUpdatesToQueue(NSOperationQueue(), withHandler: { (accData, error) -> Void in
                    
                    let mag = sqrt(accData.acceleration.x*accData.acceleration.x + accData.acceleration.y*accData.acceleration.y+accData.acceleration.z*accData.acceleration.z)
                    NSLog("x=%f y=%f z=%f mag=%f",
                        accData.acceleration.x,
                        accData.acceleration.y,
                        accData.acceleration.z, mag)
                })
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

