//
//  File.swift
//  files
//
//  Created by Esraa Eid on 5/12/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
//

import Foundation
import UIKit


class SheetContainerVC: UIViewController{
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.cornerRadius = 8.0
        self.view.backgroundColor = UIColor.white
    
        setupViews()
        setupConstraints()
    }
    
    let Cancel : UIButton = {
        let newButn = UIButton(type: .system )
        newButn.backgroundColor = .purple
        newButn.setTitle("Cancel", for: .normal)
        newButn.setTitleColor(.black, for: .normal)
        newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
        newButn.translatesAutoresizingMaskIntoConstraints = false
        newButn.frame = CGRect(x: 0, y: -20, width: 90, height: 40)
        return newButn
    }()
    
    
    //Trigger next bottom sheet
    @objc func ShowView(){
//        let vc = SheetViewContoller()
//        vc.modalTransitionStyle   = .crossDissolve
//        vc.modalPresentationStyle = .popover
//        self.present(vc, animated: true, completion: nil)
    }
    
     let stackView: UIStackView = {
          let stack = UIStackView()
               stack.distribution = UIStackView.Distribution.fillProportionally
               stack.alignment = UIStackView.Alignment.center
               stack.axis = .vertical
        
          let TitleFile : UIButton = {
                    let newButn = UIButton(type: .system )
                    newButn.backgroundColor = .green
                    newButn.setTitle("Title", for: .normal)
                    newButn.setTitleColor(.black, for: .normal)
                    newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
                    return newButn
                }()
          
          let DockFile : UIButton = {
                      let newButn = UIButton(type: .system )
                      newButn.backgroundColor = .orange
                      newButn.setTitle("Dock Receiept", for: .normal)
                      newButn.setTitleColor(.black, for: .normal)
                      newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
                      return newButn
                  }()
          
          let StampFile : UIButton = {
                      let newButn = UIButton(type: .system )
                      newButn.backgroundColor = .yellow
                      newButn.setTitle("Port Stamp Dock Receiept", for: .normal)
                      newButn.setTitleColor(.black, for: .normal)
                      newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
                      return newButn
                  }()
          
               stack.addArrangedSubview(TitleFile)
               stack.addArrangedSubview(DockFile)
               stack.addArrangedSubview(StampFile)
          return stack
      }()
    
    func setupViews(){
        view.addSubview(Cancel)
        view.addSubview(stackView)
    }

    func setupConstraints(){

        
        

        stackView.anchor(top: self.view.topAnchor, leading: self.view.leadingAnchor, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        stackView.heightAnchor.constraint(equalToConstant: 90).isActive = true


        Cancel.anchor(top: stackView.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 10, left: 30, bottom: 10, right: 30), size: .init(width: 100, height: 40))
        Cancel.centerXTo(view.centerXAnchor)
        
        
    }
    
}

