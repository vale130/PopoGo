//
//  ViewController.swift
//  PopoGo
//
//  Created by Vale Machado on 19/02/18.
//  Copyright © 2018 Vale.Machado. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapaCool: MKMapView!
    
 var manager = CLLocationManager()
    
var updateCount = 0
    let mapDistance : CLLocationDistance = 300
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.manager.delegate = self
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            print("Estamos listos para salir a casar Popos")
            self.mapaCool.showsUserLocation = true
            self.manager.startUpdatingLocation()
        } else {
self.manager.requestWhenInUseAuthorization()
// Do any additional setup after loading loading the view, typically from a nib.
        }
    }

    //MARK: Core Location Manager Delegate
    
    func locationManager (_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if updateCount < 4 {
            if (self.manager.location?.coordinate) != nil {
                let region = MKCoordinateRegionMakeWithDistance(self.manager.location!.coordinate, mapDistance, mapDistance)
                self.mapaCool.setRegion(region, animated: true)
            updateCount += 1
        }else{
            self.manager.startUpdatingLocation()
            
        }
        
        
    }
        
    
    
}
    @IBAction func uodatePosition(_ sender: Any) {if (self.manager.location?.coordinate) != nil {
                let region = MKCoordinateRegionMakeWithDistance(self.manager.location!.coordinate, 1000, 1000)
                 self.mapaCool.setRegion(region, animated: true)
                 updateCount += 1
        }
    }
    
   
    
}

