//
//  AViewController.swift
//  MainProject
//
//  Created by xiaoP on 2017/2/24.
//  Copyright © 2017年 Chicv. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
    
    let pushBButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Push BViewController", for: .normal)
        btn.addTarget(self, action: #selector(AViewController.onTap(sender:)), for: .touchUpInside)
        btn.sizeToFit()
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = String(describing: AViewController.self)
        view.addSubview(pushBButton)
        pushBButton.center = view.center
    }
    
    @objc func onTap(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let bVC = storyboard.instantiateViewController(withIdentifier: "BViewController") as! BViewController
        _ = bVC.view
        bVC.label.text = "Hello World"
        navigationController?.pushViewController(bVC, animated: true)
    }
    
}
