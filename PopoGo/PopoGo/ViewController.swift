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
    var manager = CLLocationManager()
    
    @IBOutlet weak var mapaCool: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.manager.delegate = self
        
        if CLLocationManagerDelegate.auto == .authorizedWhenInUse {
            print("Estamos listos para salir a casar popos")
        }
        }
        
        self.manager.requestWhenInUseAuthorization()
        
            self.mapaCool.showsUserLocation = true
       
        // Do  any additional setup after loading the view, typically from a nib.
    }

func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




