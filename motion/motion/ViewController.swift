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
            let yesterday = NSDate().dateByAddingTimeInterval(-60*60*24)
            let today = NSDate()
            if let am = activityManager
            {
                am.queryActivityStartingFromDate(yesterday, toDate: today, toQueue: NSOperationQueue(), withHandler: { (activities, error) -> Void in
                    for activity in activities as [CMMotionActivity]
                    {
                        if activity.automotive
                        {
                            NSLog("\(activity.startDate)")
                        }
                        //NSLog("\(activity.startDate) \(activity.stationary) \(activity.unknown) \(activity.automotive)")
                    }
                    
                })
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

