//
//  Hjem.swift
//  Monsterstartside
//
//  Created by Magnus Kinly on 26/04/15.
//  Copyright (c) 2015 MaaMetis. All rights reserved.
//

import UIKit
import Foundation


class Hjem: UIViewController {
    

    var defaults: NSUserDefaults!
    var userSettings: NSString!
    var starPoints: Int = 0
    var oldStarPoints: Int = 100
    var saveAddSundhedsPoint: Int = 0
    var oldSundhedsPoint: Int = 40
    var Sundhedspoint: Int = 0
    var Sundhedspoints: Int = 0
    var bananPris: Int = 10
    var firstPrice: Int = 0
    var sundhedspointBanan: Int = 0
    var secondPrice: Int = 0
    
    
    
    
    
    
    
    @IBOutlet weak var lblsundhedsPoint: UILabel!
    
    
    
    @IBOutlet weak var lblsaveStarPoints: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    

    override func viewWillAppear(animated: Bool) {
        defaults = NSUserDefaults.standardUserDefaults()
        if let user = defaults.stringForKey("currentUser"){
            
            
            if defaults.objectForKey("Sundhedspoint") != nil{
                Sundhedspoint = defaults.integerForKey("Sundhedspoint")
                defaults.synchronize()
                
                
            }
            
            
            
            if  defaults.objectForKey("starPoints") != nil{
                starPoints = defaults.integerForKey("starPoints")
                defaults.synchronize()
                
            }
            
            if defaults.objectForKey("firstPrice") != nil{
                firstPrice = defaults.integerForKey("firstPrice")
                defaults.synchronize()
                
            }
            
            if defaults.objectForKey("sundhedspointBanan") != nil{
                sundhedspointBanan = defaults.integerForKey("sundhedspointBanan")
                defaults.synchronize()
                
            }
            
            if defaults.objectForKey("secondPrice") != nil{
                secondPrice = defaults.integerForKey("secondPrice")
                defaults.synchronize()
                
            }
            
            
            
            
            
            
            
        }
        
        
        
        
        lblsaveStarPoints.text = "\( oldStarPoints + (starPoints) - ((firstPrice) + (secondPrice)))"
        
        
        
        lblsundhedsPoint.text = "\(oldSundhedsPoint + (sundhedspointBanan) + (Sundhedspoint))"
        
        
        
        
        
    }
    
    
    
}