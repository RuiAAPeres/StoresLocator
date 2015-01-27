//
//  AppDelegate.swift
//  Stores Locator
//
//  Created by Rui Peres on 26/01/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
                
        Parse.setApplicationId("YOUR_APPLICATION_ID", clientKey: "YOUR_CLIENT_KEY")
        PFAnalytics.trackAppOpenedWithLaunchOptionsInBackground(launchOptions, block: nil)
        
        return true
    }
}

