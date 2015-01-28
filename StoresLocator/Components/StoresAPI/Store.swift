//
//  Store.swift
//  StoresLocator
//
//  Created by Rui Peres on 28/01/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

import Foundation

class Store : PFObject, PFSubclassing {
    
    override class func load(){
        self.registerSubclass()
    }
    
    class func parseClassName() -> String! {
        return "Store"
    }
}