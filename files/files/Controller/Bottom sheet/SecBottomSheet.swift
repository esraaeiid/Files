//
//  FileVC.swift
//  files
//
//  Created by Esraa Eid on 5/5/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
//

import UIKit

class SecBottomSheet: UIViewController{
  
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
    
      //perform Sacan and upload here!!!
    @objc func ShowView(){
//        let vc = SecBottomSheet()
//        vc.modalTransitionStyle   = .crossDissolve
//        vc.modalPresentationStyle = .popover
//        self.present(vc, animated: true, completion: nil)
    }
    
    let stackView: UIStackView = {
                       let stack = UIStackView()
                            stack.distribution = UIStackView.Distribution.fillEqually
                            stack.alignment = UIStackView.Alignment.center
                            stack.axis = .vertical
        
          let ScanBtn : UIButton = {
            let newButn = UIButton()
                    newButn.backgroundColor = .white
            newButn.setTitle("Scan", for: .normal)
            newButn.setTitleColor(.black, for: .normal)
             newButn.titleLabel?.font = .boldSystemFont(ofSize: 17)
          newButn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -250, bottom: 0, right: 0)
                    newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
//            newButn.heightAnchor.constraint(equalToConstant: 15).isActive = true
            newButn.widthAnchor.constraint(equalToConstant: 50).isActive = true
                    return newButn
                }()
          
          let UploadBtn : UIButton = {
                      let newButn = UIButton()
                      newButn.backgroundColor = .white
                      newButn.setTitle("Upload", for: .normal)
                      newButn.setTitleColor(.black, for: .normal)
             newButn.titleLabel?.font = .boldSystemFont(ofSize: 17)
        newButn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -230, bottom: 0, right: 0)
                      newButn.addTarget(self, action: #selector(ShowView), for: .touchUpInside)
            newButn.widthAnchor.constraint(equalToConstant: 50).isActive = true
                      return newButn
                  }()
          
        stack.spacing = 10
        
        stack.addArrangedSubview(ScanBtn)
        stack.addArrangedSubview(UploadBtn)
                
          return stack
      }()
    
    func setupViews(){
                view.addSubview(stackView)
        view.addSubview(Cancel)
    }
    

    

    func setupConstraints(){

        stackView.anchor(top: self.view.topAnchor, leading: self.view.leadingAnchor, bottom: nil, trailing: self.view.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10))
        stackView.heightAnchor.constraint(equalToConstant: 50).isActive = true



        Cancel.anchor(top: stackView.bottomAnchor, leading: nil ,bottom: nil, trailing: nil, padding: .init(top: 20, left: 5, bottom: 10, right: 5), size: .init(width: 50, height: 40))
        Cancel.centerXTo(view.centerXAnchor)
        


    }
    
}


