//
//  File.swift
//  files
//
//  Created by Esraa Eid on 5/12/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
//


import UIKit

class HandlerVC: UIViewController {
    
    var handlerLine:UIView = {
        var handleView = UIView()
        let handlerColor = UIColor.black
        handleView.backgroundColor = .lightGray
        handleView.translatesAutoresizingMaskIntoConstraints = false
        handleView.layer.cornerRadius = 4.0
        return handleView
    }()
    
    var titleLbl:UILabel = {
        var titleLabel = UILabel()
        titleLabel.text = " "
        titleLabel.textColor = .black
        titleLabel.font = .boldSystemFont(ofSize: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.backgroundColor = .white
        return titleLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.cornerRadius = 5.0
        setupConstraints()
    }
    

        
    
    
    func setupConstraints(){
        
        self.view.addSubview(handlerLine)
        self.view.addSubview(titleLbl)
        
        self.handlerLine.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.handlerLine.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        self.handlerLine.heightAnchor.constraint(equalToConstant: 5).isActive = true
        self.handlerLine.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.titleLbl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.titleLbl.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 25).isActive = true
        self.titleLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.titleLbl.widthAnchor.constraint(equalToConstant: 125).isActive = true
    }
    
}

