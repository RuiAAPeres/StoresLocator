//
//  StoresAPI.swift
//  StoresLocator
//
//  Created by Rui Peres on 28/01/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

import Foundation

class StoresAPI {
    
    class func stores() {
        
        let query = PFQuery(className: Store.parseClassName())
        query.findObjectsInBackgroundWithBlock { (results : [AnyObject]!, error : NSError!) -> Void in
            
            if let results = results as? [Store] {
                
            }
            else {
                
            }
        }
    }
}