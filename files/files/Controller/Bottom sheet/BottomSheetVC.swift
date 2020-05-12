//
//  ViewController.swift
//  files
//
//  Created by Esraa Eid on 5/4/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
// title, dock receiept, port stamp dock receiept


import UIKit

class BottomSheetVC: UIViewController {
    
    let containerVC:SheetContainerVC = {
        let vc = SheetContainerVC()
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        return vc
    }()
    
    let handlerVC:HandlerVC = {
        let vc = HandlerVC()
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        vc.view.backgroundColor = .green
        return vc
    }()
    
    let fullView: CGFloat = 100
    
    var partialView: CGFloat {
        return UIScreen.main.bounds.height - 325
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.arredondarCantosSuperiores()
        self.setupLayoutController()
        
        UIView.animate(withDuration: 0.6, animations: { [weak self] in
            let frame = self?.view.frame
            let yComponent = self?.partialView
            self?.view.frame = CGRect(x: 0, y: yComponent!, width: frame!.width, height: frame!.height - 100)
        })
    }
    
    var heightConstraint:NSLayoutConstraint!
    var HandlerBottomConstraint:NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        view.addGestureRecognizer(UIPanGestureRecognizer.init(target: self, action: #selector(panGesture(_:))))
    }
    
    func setupLayoutController(){
        self.view.addSubview(containerVC.view)
        self.view.addSubview(handlerVC.view)
        
        
        
        heightConstraint =  containerVC.view.heightAnchor.constraint(equalToConstant: 0)
        HandlerBottomConstraint = handlerVC.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        
        
        containerVC.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        containerVC.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        containerVC.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        heightConstraint.isActive = true
        //FIXME: Height constraints.
        //should stuck to bottom sheet height anchor
        handlerVC.view.heightAnchor.constraint(equalToConstant: 68).isActive = true
        handlerVC.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        handlerVC.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        HandlerBottomConstraint.isActive = true
        
        
        //setup childViewController ( this view is the bottom sheet )
        self.addChild(containerVC)
        self.addChild(handlerVC)
        
        
        
        
        //          let screenSize = UIScreen.main.bounds
        let heightValue = view.frame.height - 170
        //            view.frame.maxY
        
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.HandlerBottomConstraint.constant = CGFloat(-heightValue)
            self.heightConstraint.constant =  CGFloat(heightValue)
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    
    func arredondarCantosSuperiores(){
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: view.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 25, height: 25)).cgPath
        self.view.layer.mask = maskLayer
    }
    
    
    //Gesture..
    @objc func panGesture(_ recognizer: UIPanGestureRecognizer) {
        
        let translation = recognizer.translation(in: self.view)
        let velocity = recognizer.velocity(in: self.view)
        
        let y = self.view.frame.minY
        if (y + translation.y >= fullView) && (y + translation.y <= partialView) {
            self.view.frame = CGRect(x: 0, y: y + translation.y, width: view.frame.width, height: view.frame.height)
            recognizer.setTranslation(CGPoint.zero, in: self.view)
        }
        
        if recognizer.state == .ended {
            var duration =  velocity.y < 0 ? Double((y - fullView) / -velocity.y) : Double((partialView - y) / velocity.y )
            
            duration = duration > 1.25 ? 1 : duration
            
            UIView.animate(withDuration: duration, delay: 0.0, options: [.allowUserInteraction], animations: {
                if  velocity.y >= 0 {
                    self.view.frame = CGRect(x: 0, y: self.partialView, width: self.view.frame.width, height: self.view.frame.height)
                } else {
                    self.view.frame = CGRect(x: 0, y: self.fullView, width: self.view.frame.width, height: self.view.frame.height)
                }
            })
        }
    }
    
    
}
