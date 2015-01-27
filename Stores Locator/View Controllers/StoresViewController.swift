//
//  StoresViewController.swift
//  Stores Locator
//
//  Created by Rui Peres on 27/01/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class StoresViewController : UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet private var toolbar : UIToolbar!
    @IBOutlet private var map : MKMapView!
    
    // MARK: Properties

    let locationManager : CLLocationManager
    
    // MARK: UIViewController Overrides

    required init(coder aDecoder: NSCoder) {
        locationManager = CLLocationManager()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        
        setupToolBarIcons()
    }
    
    // MARK: Actions
    
    func goToCurrentLocation(sender : UIButton) {
        
        let coordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let userRegion = MKCoordinateRegionMake(map.userLocation.coordinate, coordinateSpan)

        map.setRegion(userRegion, animated: true)
    }
}

extension StoresViewController {
    
    func setupToolBarIcons() {
        let locationButton = UIButton.barButton(named: "location_arrow")
        locationButton.addTarget(self, action: "goToCurrentLocation:", forControlEvents: .TouchUpInside)
        
        let locationBarButtonItem = UIBarButtonItem(customView: locationButton)
        locationBarButtonItem.tintColor = UIColor.blueColor()
        
        toolbar.setItems([locationBarButtonItem], animated: false)
    }
}