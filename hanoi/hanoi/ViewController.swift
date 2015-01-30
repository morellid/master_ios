//
//  ViewController.swift
//  hanoi
//
//  Created by Davide Morelli on 09/12/14.
//  Copyright (c) 2014 com.biobeats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func move(from:String, to:String, tmp:String, n: Int ) {
        if n==1 {
            println("move from "+from+" to "+to)
        } else {
            move(from, to: tmp, tmp: to, n: n-1)
            println("move from "+from+" to "+to)
            move( tmp, to: to, tmp: from, n: n-1)
        }
    }
    
    @IBAction func doit(sender: AnyObject) {
        move("A", to: "C", tmp: "B", n: 5)
    }
}

