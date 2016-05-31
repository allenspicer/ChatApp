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
    
    let allenApp = "spicerwhisper"
    let donnyApp = "dwdwhisper"
    let jorgeApp = "njcwhisper"
    let nickApp = "npwhisper"
    let oliverApp = "eosproj"
    let steveApp = "fbfooproject"
    let tomApp = "dts2whisper"
    
    

    
   // let ref = Firebase(url: "https://spicerwhisper-59eee.firebaseio.com/")

    override func viewDidLoad() {
        super.viewDidLoad()

    let apps = [allenApp, donnyApp, jorgeApp, nickApp, oliverApp, steveApp, tomApp]
    let defaultOptions = FIROptions.defaultOptions()
    
    for app in apps {
    let configureOptions = FIROptions(googleAppID: defaultOptions.googleAppID, bundleID: "", GCMSenderID: defaultOptions.GCMSenderID, APIKey: defaultOptions.APIKey, clientID: defaultOptions.clientID, trackingID: defaultOptions.trackingID, androidClientID: defaultOptions.androidClientID, databaseURL: "https://\(app).firebaseio.com/", storageBucket: "", deepLinkURLScheme: defaultOptions.deepLinkURLScheme)
    
    FIRApp.configureWithName(app, options: configureOptions)
    }
    
        fireAppInstance = FIRApp.init(named: appName!)
        ref = FIRDatabase.database(app: fireAppInstance!).reference()
        
        
        
        
        
        
        
        
        
        
//            ref.observeEventType(.Value, withBlock: {snapshot in
//            let message = snapshot.value as! String
//            self.label.text = message
        
            
        })
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

