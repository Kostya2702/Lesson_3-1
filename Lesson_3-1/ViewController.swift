//
//  ViewController.swift
//  Lesson_3-1
//
//  Created by kostya on 22.11.2020.
//  Copyright © 2020 kostya.L. All rights reserved.
//

import UIKit

@IBDesignable class PrimaryButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat{
        get { return layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }
    
}

class ViewController: UIViewController {
    
    var topConstraint: NSLayoutConstraint?
    
    let rectView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSomeView()
        
    }
    
    func addSomeView() {

        rectView.backgroundColor = .black
        rectView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rectView)

        topConstraint = rectView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        topConstraint?.isActive = true

        rectView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true

        rectView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true

        rectView.heightAnchor.constraint(equalToConstant: 128).isActive = true

    }
    
    @IBAction func Color(_ sender: Any) {
        
        topConstraint?.constant = 150
        rectView.backgroundColor = .yellow
        
    }
    
}

