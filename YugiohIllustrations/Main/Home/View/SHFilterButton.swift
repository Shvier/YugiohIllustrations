//
//  SHFilterButton.swift
//  YugiohIllustrations
//
//  Created by shvier on 04/07/2017.
//  Copyright © 2017 Shvier. All rights reserved.
//

import UIKit

class SHFilterButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initUI() {
        backgroundColor = UIColor.yellow
        setTitleColor(UIColor.black, for: .normal)
        addTarget(self, action: #selector(self.clicked(sender:)), for: .touchUpInside)
    }
    
    @objc func clicked(sender: UIButton) {
        
    }
    
}
