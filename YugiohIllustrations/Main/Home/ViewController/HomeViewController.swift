//
//  HomeViewController.swift
//  YugiohIllustrations
//
//  Created by shvier on 01/07/2017.
//  Copyright © 2017 Shvier. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    var filterView: SHFilterView?
    
    @objc func leftBarItemAction(sender: UIBarButtonItem) {
        let settingVC = SHSettingViewController()
        present(settingVC, animated: true, completion: nil)
    }
    
    func initUI() {
        configNavi()
        filterView = SHFilterView()
        view.addSubview(filterView!)
        filterView?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(view)
            make.top.equalTo(view).offset(64)
        })
    }
    
    func configNavi() {
        let leftBarItem: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(self.leftBarItemAction(sender:)))
        navigationItem.leftBarButtonItem = leftBarItem
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.1
    }

}

