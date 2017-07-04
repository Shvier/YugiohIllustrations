//
//  SHFilterView.swift
//  YugiohIllustrations
//
//  Created by shvier on 04/07/2017.
//  Copyright © 2017 Shvier. All rights reserved.
//

import UIKit

class SHFilterView: SHBaseView {
    
    let buttonMargin: CGFloat = 10
    let buttonHeight: CGFloat = 20
    
    var monsterView: UIView?
    var magicView: UIView?
    var trapView: UIView?
    
    var yellowMsterButton: SHFilterButton?
    var brownMsterButton: SHFilterButton?
    var blueMsterButton: SHFilterButton?
    var purpleMsterButton: SHFilterButton?
    var whiteMsterButton: SHFilterButton?
    var blackMsterButton: SHFilterButton?
    var gradientMsterButton: SHFilterButton?
    var deepBlueMsterButton: SHFilterButton?
    var tokenMsterButton: SHFilterButton?
    
    var magicButton: SHFilterButton?
    var fireMagicButton: SHFilterButton?
    var thunderMagicButton: SHFilterButton?
    var infMagicButton: SHFilterButton?
    var crossMagicButton: SHFilterButton?
    var compassMagicButton: SHFilterButton?
    
    var trapButton: SHFilterButton?
    var infTrapButton: SHFilterButton?
    var antiTrapButton: SHFilterButton?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
        makeConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func initUI() {
        monsterView = ({
            let view = UIView()
            view.backgroundColor = UIColor.orange
            return view
        })()
        addSubview(monsterView!)
        
        magicView = ({
            let view = UIView()
            view.backgroundColor = UIColor.blue
            return view
        })()
        addSubview(magicView!)
        
        trapView = ({
            let view = UIView()
            view.backgroundColor = UIColor.red
            return view
        })()
        addSubview(trapView!)
        
        yellowMsterButton = ({
            let button = SHFilterButton()
            button.setTitle("普通怪兽", for: .normal)
            return button
        })()
        monsterView?.addSubview(yellowMsterButton!)
        
        brownMsterButton = ({
            let button = SHFilterButton()
            button.setTitle("效果怪兽", for: .normal)
            return button
        })()
        monsterView?.addSubview(brownMsterButton!)
        
        blueMsterButton = ({
            let button = SHFilterButton()
            button.setTitle("仪式怪兽", for: .normal)
            return button
        })()
        monsterView?.addSubview(blueMsterButton!)
        
        purpleMsterButton = ({
            let button = SHFilterButton()
            button.setTitle("融合怪兽", for: .normal)
            return button
        })()
        monsterView?.addSubview(purpleMsterButton!)
        
        whiteMsterButton = ({
            let button = SHFilterButton()
            button.setTitle("同调怪兽", for: .normal)
            return button
        })()
        monsterView?.addSubview(whiteMsterButton!)
        
        blackMsterButton = ({
            let button = SHFilterButton()
            button.setTitle("超量怪兽", for: .normal)
            return button
        })()
        monsterView?.addSubview(blackMsterButton!)
        
        gradientMsterButton = ({
            let button = SHFilterButton()
            button.setTitle("钟摆怪兽", for: .normal)
            return button
        })()
        monsterView?.addSubview(gradientMsterButton!)
        
        tokenMsterButton = ({
            let button = SHFilterButton()
            button.setTitle("Token", for: .normal)
            return button
        })()
        monsterView?.addSubview(tokenMsterButton!)
        
        magicButton = ({
            let button = SHFilterButton()
            button.setTitle("普通魔法", for: .normal)
            return button
        })()
        magicView?.addSubview(magicButton!)
        
        fireMagicButton = ({
            let button = SHFilterButton()
            button.setTitle("仪式魔法", for: .normal)
            return button
        })()
        magicView?.addSubview(fireMagicButton!)
        
        thunderMagicButton = ({
            let button = SHFilterButton()
            button.setTitle("速攻魔法", for: .normal)
            return button
        })()
        magicView?.addSubview(thunderMagicButton!)
        
        infMagicButton = ({
            let button = SHFilterButton()
            button.setTitle("永续魔法", for: .normal)
            return button
        })()
        magicView?.addSubview(infMagicButton!)
        
        crossMagicButton = ({
            let button = SHFilterButton()
            button.setTitle("装备魔法", for: .normal)
            return button
        })()
        magicView?.addSubview(crossMagicButton!)
        
        compassMagicButton = ({
            let button = SHFilterButton()
            button.setTitle("场地魔法", for: .normal)
            return button
        })()
        magicView?.addSubview(compassMagicButton!)
        
        trapButton = ({
            let button = SHFilterButton()
            button.setTitle("普通陷阱", for: .normal)
            return button
        })()
        trapView?.addSubview(trapButton!)
    }
    
    func makeConstraints() {
        monsterView?.snp.makeConstraints({ (make) in
            make.left.top.bottom.equalTo(self)
            make.width.equalTo(magicView!)
        })
        
        magicView?.snp.makeConstraints({ (make) in
            make.left.equalTo((monsterView?.snp.right)!)
            make.right.equalTo((trapView?.snp.left)!)
            make.top.bottom.equalTo(self)
        })
        
        trapView?.snp.makeConstraints({ (make) in
            make.top.right.bottom.equalTo(self)
            make.width.equalTo(magicView!)
        })
        
        yellowMsterButton?.snp.makeConstraints({ (make) in
            make.left.top.equalTo(monsterView!).offset(buttonMargin)
            make.right.equalTo(monsterView!).offset(-buttonMargin)
            make.height.equalTo(buttonHeight)
        })
        
        brownMsterButton?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(yellowMsterButton!)
            make.top.equalTo((yellowMsterButton?.snp.bottom)!).offset(buttonMargin)
            make.height.equalTo(buttonHeight)
        })
        
        blueMsterButton?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(yellowMsterButton!)
            make.top.equalTo((brownMsterButton?.snp.bottom)!).offset(buttonMargin)
            make.height.equalTo(buttonHeight)
        })
        
        purpleMsterButton?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(yellowMsterButton!)
            make.top.equalTo((blueMsterButton?.snp.bottom)!).offset(buttonMargin)
            make.height.equalTo(buttonHeight)
        })
        
        whiteMsterButton?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(yellowMsterButton!)
            make.top.equalTo((purpleMsterButton?.snp.bottom)!).offset(buttonMargin)
            make.height.equalTo(buttonHeight)
        })
        
        blackMsterButton?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(yellowMsterButton!)
            make.top.equalTo((whiteMsterButton?.snp.bottom)!).offset(buttonMargin)
            make.height.equalTo(buttonHeight)
        })
        
        gradientMsterButton?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(blackMsterButton!)
            make.top.equalTo((blackMsterButton?.snp.bottom)!).offset(buttonMargin)
            make.height.equalTo(buttonHeight)
        })
        
        tokenMsterButton?.snp.makeConstraints({ (make) in
            make.left.right.equalTo(gradientMsterButton!)
            make.top.equalTo((gradientMsterButton?.snp.bottom)!).offset(buttonMargin)
            make.height.equalTo(buttonHeight)
            make.bottom.equalTo(self).offset(-buttonMargin)
        })
        
        magicButton?.snp.makeConstraints({ (make) in
            make.left.top.equalTo(magicView!).offset(buttonMargin)
            make.right.equalTo(magicView!).offset(-buttonMargin)
            make.height.equalTo(buttonHeight)
        })
        
        trapButton?.snp.makeConstraints({ (make) in
            make.left.top.equalTo(trapView!).offset(buttonMargin)
            make.right.equalTo(trapView!).offset(-buttonMargin)
            make.height.equalTo(buttonHeight)
        })
    }

}
