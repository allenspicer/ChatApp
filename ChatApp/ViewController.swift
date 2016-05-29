//
//  ViewController.swift
//  ChatApp
//
//  Created by Allen Spicer on 5/29/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let ref = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/")

    override func viewDidLoad() {
        super.viewDidLoad()

    
    ref.setValue("Hello There Firebase")
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

