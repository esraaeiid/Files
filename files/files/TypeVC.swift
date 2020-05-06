//
//  ViewController.swift
//  files
//
//  Created by Esraa Eid on 5/4/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
// title, dock receiept, port stamp dock receiept

import UIKit

class TypeVC: UIViewController {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("inital commit")
    }
    @IBAction func TitleClicked(_ sender: Any) {
        performSegue(withIdentifier: "TypeSegue", sender: sender)
    }
    @IBAction func DockClicke(_ sender: Any) {
        performSegue(withIdentifier: "TypeSegue", sender: sender)
    }
    @IBAction func PortClicked(_ sender: Any) {
        performSegue(withIdentifier: "TypeSegue", sender: sender)
    }
    
  
        
    
  
    
}

