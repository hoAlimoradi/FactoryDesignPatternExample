//
//  ViewController.swift
//  FactoryDesignPatternExample
//
//  Created by hoseinAlimoradi on 7/19/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let plistSerializer = SerializerFactory.makeSerializer(.plist)
        plistSerializer?.serialize()
    }


}

