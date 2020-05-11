//
//  Menu.swift
//  files
//
//  Created by Esraa Eid on 5/11/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
//

import UIKit

class Menu: UIViewController {

     let Buton : UIButton = {
         let newButn = UIButton(type: .system )
         newButn.backgroundColor = .white
         newButn.setTitle("Preview", for: .normal)
//         newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
         newButn.translatesAutoresizingMaskIntoConstraints = false

         
         
         return newButn
     }()
    
     override func viewDidLoad() {
         super.viewDidLoad()

         navigationController?.navigationBar.backgroundColor = .gray
         view.backgroundColor = .white
         view.addSubview(Buton)
         Buton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
         Buton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
         Buton.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
         Buton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 40).isActive = true

              
     }
     
//      @objc func ShowView() {
//
//
//         let vc = Menu()
//                vc.modalTransitionStyle   = .crossDissolve
//                vc.modalPresentationStyle = .popover
//                self.present(vc, animated: true, completion: nil)
//
//
//     }

}
