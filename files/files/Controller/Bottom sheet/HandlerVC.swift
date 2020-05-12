//
//  File.swift
//  files
//
//  Created by Esraa Eid on 5/12/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
//

import Foundation
import UIKit


class HandlerVC: UIViewController {

    var handlerLine:UIView = {
          var handleView = UIView()
        let handlerColor = UIColor.black
          handleView.backgroundColor = handlerColor
          handleView.translatesAutoresizingMaskIntoConstraints = false
          handleView.layer.cornerRadius = 4.0
          return handleView
      }()
    
      override func viewDidLoad() {
          super.viewDidLoad()
          self.view.backgroundColor = UIColor.white
          self.view.addSubview(handlerLine)
          self.view.layer.cornerRadius = 9.0




               let titleabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 350, height: view.frame.height))
               titleabel.text = " Attach A File "
               titleabel.textColor = .black
               titleabel.font = UIFont.systemFont(ofSize: 20)
               navigationItem.titleView = titleabel




        self.handlerLine.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.handlerLine.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.handlerLine.heightAnchor.constraint(equalToConstant: 5).isActive = true
        self.handlerLine.widthAnchor.constraint(equalToConstant: 50).isActive = true

    

      }



}

