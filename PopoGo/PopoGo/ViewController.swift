//
//  ViewController.swift
//  PopoGo
//
//  Created by Vale Machado on 19/02/18.
//  Copyright © 2018 Vale.Machado. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    var manager = CLLocationManager()
    
    @IBOutlet weak var mapaCool: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.mapaCool.showsUserLocation = true
        // Do  any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

