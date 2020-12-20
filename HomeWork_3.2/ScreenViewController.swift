//
//  ScreenViewController.swift
//  HomeWork_3.2
//
//  Created by Pavel on 12.12.2020.
//

import UIKit

class ScreenViewController: UIViewController {
    
    //var label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))

    override func viewDidLoad() {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))

        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "this label"
        self.view.addSubview(label)
        
        super.viewDidLoad()
}
}
