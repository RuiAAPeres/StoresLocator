//
//  StoresAPI.swift
//  StoresLocator
//
//  Created by Rui Peres on 28/01/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

import Foundation
import LlamaKit

class StoresAPI {
    
    class func stores(completion : (Result<[Store],NSError>) -> ()) {
        
        let query = PFQuery(className: Store.parseClassName())
        query.findObjectsInBackgroundWithBlock { (results : [AnyObject]!, error : NSError!) -> Void in
            
            switch results {
            case let stores where (results as? [Store] != nil) :
                completion(success(stores as [Store]))
            default :
                completion(failure(error))
            }
        }
    }
}

