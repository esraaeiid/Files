//
//  Menu.swift
//  files
//
//  Created by Esraa Eid on 5/11/20.
//  Copyright © 2020 Esraa Eid. All rights reserved.
//

import UIKit

class Menu: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = .white
        addBottomSheetView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func addBottomSheetView() {

        let bottomSheetVC = BottomSheetVC()
        self.addChild(bottomSheetVC)
        self.view.addSubview(bottomSheetVC.view)
        bottomSheetVC.didMove(toParent: self)
        
        let height = view.frame.height
        let width  = view.frame.width
        
        bottomSheetVC.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height)
    }

}
