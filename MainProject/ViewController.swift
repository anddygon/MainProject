//
//  ViewController.swift
//  MainProject
//
//  Created by xiaoP on 2017/2/23.
//  Copyright © 2017年 Chicv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = String(describing: ViewController.self)
    }

    @IBAction func onTap(_ sender: Any) {
        let aVC = AViewController()
        aVC.view.backgroundColor = .white
        navigationController?.pushViewController(aVC, animated: true)
    }


}

