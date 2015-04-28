//
//  Gadgets.swift
//  Monsterstartside
//
//  Created by Magnus Kinly on 28/04/15.
//  Copyright (c) 2015 MaaMetis. All rights reserved.
//

import Foundation
import UIKit


class Gadgets: UIViewController {
    
    
    
    var defaults: NSUserDefaults!
    var userSettings: Array<String>!
    var firstPrice: Int = 0
    
    
    
    var beard = UIImage(named: "skæg.png") as UIImage!



    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewWillAppear(animated: Bool) {
        defaults = NSUserDefaults.standardUserDefaults()
        if let user = defaults.stringForKey("currentUser"){
            
            
      //      if defaults.objectForKey("beard") != nil {
       //         beard = defaults.dataForKey("beard")
         //       defaults.synchronize()
            
            
       //     }
            
            if defaults.objectForKey("firstPrice") != nil{
                firstPrice = defaults.integerForKey("firstPrice")
                defaults.synchronize()
                
                
            }

            
            
            
        }
        
    }
    
    
    
    
    

    override func viewWillDisappear(animated: Bool) {
        defaults.setInteger(firstPrice, forKey: "firstPrice")
    
    
    
    
    
    
    }
    
    

    @IBAction func btnskæg(sender: UIButton) {
        
        var alertView = UIAlertController(title: "Shop", message: "Køb skæg for 20 point?", preferredStyle: .Alert)
        
        
        var myOkAction = UIAlertAction(title: "Køb", style: .Default) { UIAlertAction in
            NSLog("Action OK!!")
            
            var saveFirstPrice: NSString = "\(self.firstPrice)"
            
            
            NSUserDefaults.standardUserDefaults().setObject(saveFirstPrice, forKey: "currentuser")
            
            
            NSUserDefaults.standardUserDefaults().synchronize()
            
            
            
        }
        
        var cancelAction = UIAlertAction(title: "Tilbage", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            NSLog("Tilbage Pressed")
            
            
            
            
        }
        
        
        alertView.addAction(myOkAction)
        alertView.addAction(cancelAction)
        
        
        
        presentViewController(alertView, animated: true, completion: nil)
        
        firstPrice = Int(20)
            
    }





}





