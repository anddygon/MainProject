//
//  AViewController.swift
//  MainProject
//
//  Created by xiaoP on 2017/2/23.
//  Copyright © 2017年 Chicv. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = String(describing: AViewController.self)
    }

    @IBAction func onTap(_ sender: Any) {
        let bVC = storyboard?.instantiateViewController(withIdentifier: "BViewController") as! BViewController
        _ = bVC.view.backgroundColor
        bVC.label.text = "Hello World"
        navigationController?.pushViewController(bVC, animated: true)
    }

}
