//
//  ViewController.swift
//  HomeWork_3.2
//
//  Created by Pavel on 12.12.2020.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
    var labelTopAnchor: NSLayoutConstraint?
    var rectangleTopAnchor: NSLayoutConstraint?
    let label = UILabel()
    let rectangle = UIView()
    private var lastTranslation: CGFloat = 0
    private var panPosition: CGFloat = 0
    
    private lazy var panGestureRecognizer: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(slideView(_:)))
        
    override func viewDidLoad() {
        super.viewDidLoad()
        addLabelView()
        addRectangle()
        rectangle.addGestureRecognizer(panGestureRecognizer)
    }
    
    func addLabelView(){
        
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        
        labelTopAnchor = label.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        labelTopAnchor?.isActive = true
        
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true

        label.textAlignment = .center
        label.textColor = .white
        label.text = "\(number)"
        
    }
    
    
    func addRectangle() {
        
        rectangle.backgroundColor = .black
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(rectangle)
        
        rectangleTopAnchor = rectangle.topAnchor.constraint(equalTo: label.topAnchor, constant: 90)
        rectangleTopAnchor?.isActive = true
       
        rectangle.leadingAnchor.constraint(equalTo: label.leadingAnchor, constant: 50).isActive = true
        
        rectangle.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: -50).isActive = true
        
        rectangle.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    @objc func slideView(_ sender: UIPanGestureRecognizer){
            if panPosition < panGestureRecognizer.location(in: self.view).y {
                number -= 1
                panPosition = panGestureRecognizer.location(in: self.view).y
            } else if panPosition > panGestureRecognizer.location(in: self.view).y {
                number += 1
                panPosition = panGestureRecognizer.location(in: self.view).y
            }
            label.text = "\(number)"
        }
}

