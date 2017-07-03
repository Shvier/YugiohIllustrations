//
//  HomeViewController.swift
//  YugiohIllustrations
//
//  Created by shvier on 01/07/2017.
//  Copyright © 2017 Shvier. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    func leftBarItemAction(sender: UIBarButtonItem) {
        let settingVC = SHSettingViewController()
        present(settingVC, animated: true, completion: nil)
    }
    
    func initUI() {
        configNavi()
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
        // Dispose of any resources that can be recreated.
    }

}

