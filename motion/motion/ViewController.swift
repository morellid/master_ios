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

    var activityManager : CMMotionActivityManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        if CMMotionActivityManager.isActivityAvailable()
        {
            activityManager = CMMotionActivityManager()
            activityManager?.startActivityUpdatesToQueue(NSOperationQueue(),
                withHandler: { (activity) -> Void in
                    NSLog("unknown:\(activity.unknown) stationary:\(activity.stationary) walking:\(activity.walking) running:\(activity.running) automotive:\(activity.automotive) \(activity.confidence.rawValue)")
                    
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

