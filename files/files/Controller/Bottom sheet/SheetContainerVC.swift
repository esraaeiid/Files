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
        self.view.backgroundColor = UIColor.red
        
        view.addSubview(Cancel)
        view.addSubview(stackView)
        setupConstraints()
                 
    }
//    let TitleFile : UIButton = {
//              let newButn = UIButton(type: .system )
//              newButn.backgroundColor = .green
//              newButn.setTitle("Title", for: .normal)
//              newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
//              newButn.translatesAutoresizingMaskIntoConstraints = false
//              return newButn
//          }()
//
//    let DockFile : UIButton = {
//                let newButn = UIButton(type: .system )
//                newButn.backgroundColor = .orange
//                newButn.setTitle("Dock Receiept", for: .normal)
//                newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
//                newButn.translatesAutoresizingMaskIntoConstraints = false
//                return newButn
//            }()
//
//    let StampFile : UIButton = {
//                let newButn = UIButton(type: .system )
//                newButn.backgroundColor = .yellow
//                newButn.setTitle("Port Stamp Dock Receiept", for: .normal)
//                newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
//                newButn.translatesAutoresizingMaskIntoConstraints = false
//                return newButn
//            }()
    
    let Cancel : UIButton = {
        let newButn = UIButton(type: .system )
        newButn.backgroundColor = .purple
        newButn.setTitle("Cancel", for: .normal)
        newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
        newButn.translatesAutoresizingMaskIntoConstraints = false
        return newButn
    }()
    
    
    //Trigger next bottom sheet
    @objc func ShowView(){
//        let vc = SheetViewContoller()
//        vc.modalTransitionStyle   = .crossDissolve
//        vc.modalPresentationStyle = .popover
//        self.present(vc, animated: true, completion: nil)
    }
    
    fileprivate let stackView: UIStackView = {
          let stack = UIStackView()
               stack.distribution = UIStackView.Distribution.fillEqually
               stack.alignment = UIStackView.Alignment.center
               stack.axis = .vertical
//          stack.translatesAutoresizingMaskIntoConstraints = false
        
          let TitleFile : UIButton = {
                    let newButn = UIButton(type: .system )
                    newButn.backgroundColor = .green
                    newButn.setTitle("Title", for: .normal)
                    newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
//                    newButn.translatesAutoresizingMaskIntoConstraints = false
                    return newButn
                }()
          
          let DockFile : UIButton = {
                      let newButn = UIButton(type: .system )
                      newButn.backgroundColor = .orange
                      newButn.setTitle("Dock Receiept", for: .normal)
                      newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
//                      newButn.translatesAutoresizingMaskIntoConstraints = false
                      return newButn
                  }()
          
          let StampFile : UIButton = {
                      let newButn = UIButton(type: .system )
                      newButn.backgroundColor = .yellow
                      newButn.setTitle("Port Stamp Dock Receiept", for: .normal)
                      newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
//                      newButn.translatesAutoresizingMaskIntoConstraints = false
                      return newButn
                  }()
          
               stack.addArrangedSubview(TitleFile)
               stack.addArrangedSubview(DockFile)
               stack.addArrangedSubview(StampFile)
          return stack
      }()

    func setupConstraints(){
//        view.addSubview(TitleFile)
//        view.addSubview(DockFile)
//        view.addSubview(StampFile)
        
        
        //FIXME: Replace width with equal width?
        
//        stackView.heightAnchor.constraint(equalToConstant: 200).isActive = true
//        stackView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        stackView.anchor(top: self.view.topAnchor, leading: self.view.leadingAnchor, bottom: self.Cancel.topAnchor, trailing: self.view.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        stackView.heightAnchor.constraint(equalToConstant: 75).isActive = true

//        self.TitleFile.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
//        self.TitleFile.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        self.TitleFile.widthAnchor.constraint(equalToConstant: 200).isActive = true
//
//        self.DockFile.topAnchor.constraint(equalTo: TitleFile.bottomAnchor, constant: 10).isActive = true
//        self.DockFile.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        self.DockFile.widthAnchor.constraint(equalToConstant: 200).isActive = true
//
//        self.StampFile.topAnchor.constraint(equalTo: DockFile.bottomAnchor, constant: 10).isActive = true
//        self.StampFile.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        self.StampFile.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        self.Cancel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10).isActive = true
        self.Cancel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.Cancel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        
    }
    
  //Why anchor don't used??????????????
}

