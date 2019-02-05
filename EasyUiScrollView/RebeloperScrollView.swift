//
//  RebeloperScrollView.swift
//  EasyUiScrollView
//
//  Created by Alex Nagy on 05/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class RebeloperScrollView: UIScrollView {
    
    var containerView: UIView?
    
    init(view: UIView, contentViewSize: CGSize, bounces: Bool = true) {
        super.init(frame: .zero)
        
        backgroundColor = .white
        frame = view.bounds
        contentSize = contentViewSize
        autoresizingMask = .flexibleHeight
        showsHorizontalScrollIndicator = true
        self.bounces = bounces
        
        let containerView = UIView()
        containerView.backgroundColor = .white
        containerView.frame.size = contentViewSize
        
        addSubview(containerView)
        
        self.containerView = containerView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
