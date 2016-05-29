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
    @IBAction func button(sender: UIButton) {
        ref.setValue(textfield.text!)
    }
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    
    
    let ref = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/")

    override func viewDidLoad() {
        super.viewDidLoad()

    
    ref.setValue("Wahoo!")
        ref.observeEventType(.Value, withBlock: {snapshot in
            let message = snapshot.value as! String
            self.label.text = message
            
            
        })
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

