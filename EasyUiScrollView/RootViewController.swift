//
//  RootViewController.swift
//  EasyUiScrollView
//
//  Created by Alex Nagy on 05/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class RootViewController: UIViewController {
    
    // MARK: - Proterties
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 400)
    
    // MARK: - Views
    
    lazy var scrollView: RebeloperScrollView = {
        let scrollView = RebeloperScrollView(view: view, contentViewSize: contentViewSize, bounces: false)
        return scrollView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Center of container view"
        return label
    }()
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        
        guard let containerView = scrollView.containerView else { return }
        
        containerView.addSubview(label)
        
        label.center(in: containerView)
        
    }
    
    
}


