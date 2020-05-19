//
//  File.swift
//  files
//
//  Created by Esraa Eid on 5/12/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
//

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
        let newButn = UIButton()
        newButn.backgroundColor = UIColor(red: 0.922, green: 0.925, blue: 0.937, alpha: 1)
        newButn.setTitle("Cancel", for: .normal)
        newButn.setTitleColor(.black, for: .normal)
        newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
        newButn.titleLabel?.font = .boldSystemFont(ofSize: 17)
        newButn.layer.cornerRadius = 8
        newButn.clipsToBounds = true
        return newButn
    }()
    
    @objc func ShowView(){
//        let vc = SecBottomSheet()
//        vc.modalTransitionStyle   = .crossDissolve
//        vc.modalPresentationStyle = .popover
//        self.present(vc, animated: true, completion: nil)
        
        let SecondBottomSheet = SecBottomSheet()
            
               let height = view.frame.height
               let width  = view.frame.width
               
               SecondBottomSheet.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height)
        SecondBottomSheet.modalPresentationStyle = .popover
        self.present(SecondBottomSheet, animated: true, completion: nil)
    }
    
    let stackView: UIStackView = {
                       let stack = UIStackView()
                            stack.distribution = UIStackView.Distribution.fillEqually
                            stack.alignment = UIStackView.Alignment.center
                            stack.axis = .vertical
        
          let TitleFile : UIButton = {
            let newButn = UIButton()
                    newButn.backgroundColor = .white
            newButn.setTitle("Title", for: .normal)
            newButn.setTitleColor(.black, for: .normal)
             newButn.titleLabel?.font = .boldSystemFont(ofSize: 17)
          newButn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -230, bottom: 0, right: 0)
                    newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
//            newButn.heightAnchor.constraint(equalToConstant: 15).isActive = true
            newButn.widthAnchor.constraint(equalToConstant: 250).isActive = true
                    return newButn
                }()
          
          let DockFile : UIButton = {
                      let newButn = UIButton()
                      newButn.backgroundColor = .white
                      newButn.setTitle("Dock Receiept", for: .normal)
                      newButn.setTitleColor(.black, for: .normal)
             newButn.titleLabel?.font = .boldSystemFont(ofSize: 17)
        newButn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -151, bottom: 0, right: 0)
                      newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
            newButn.widthAnchor.constraint(equalToConstant: 250).isActive = true
                      return newButn
                  }()
          
          let StampFile : UIButton = {
                      let newButn = UIButton()
                      newButn.backgroundColor = .white
                      newButn.setTitle("Port Stamp Dock Receiept", for: .normal)
                      newButn.setTitleColor(.black, for: .normal)
             newButn.titleLabel?.font = .boldSystemFont(ofSize: 17)
            newButn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -60, bottom: 0, right: 0)
                      newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
            newButn.widthAnchor.constraint(equalToConstant: 250).isActive = true
                      return newButn
                  }()
    
        stack.spacing = 30
        
        stack.addArrangedSubview(TitleFile)
        stack.addArrangedSubview(DockFile)
        stack.addArrangedSubview(StampFile)
                
          return stack
      }()
    
    func setupViews(){
                view.addSubview(stackView)
        view.addSubview(Cancel)
    }
    

    

    func setupConstraints(){

        stackView.anchor(top: self.view.topAnchor, leading: self.view.leadingAnchor, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        stackView.heightAnchor.constraint(equalToConstant: 150).isActive = true



        Cancel.anchor(top: stackView.bottomAnchor, leading: nil ,bottom: nil, trailing: nil, padding: .init(top: 20, left: 5, bottom: 10, right: 5), size: .init(width: 350, height: 40))
        Cancel.centerXTo(view.centerXAnchor)
        


    }
    
}

