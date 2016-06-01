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
        
        //set a value to firebase
        ref.setValue(textfield.text!)
    }
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    
    
    let ref = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/")


    override func viewDidLoad() {
        super.viewDidLoad()

        //if firebase changes excute a block of code
//        ref.observeEventType(.Value, withBlock: {snapshot in
//            
//            //take the value of a snapshot and interpret as a string
//            let message = snapshot.value as! String
//           // set the label text to be that string
//            self.label.text = message
//            
//        })
        
        ref.observeEventType(.Value, withBlock:{snapshot in
            let countOfChildren = snapshot.childrenCount
            self.label.text = String(countOfChildren)})
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

