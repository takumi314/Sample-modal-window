//
//  ModalViewController.swift
//  Sample-modal-window
//
//  Created by NishiokaKohei on 30/12/2018.
//  Copyright © 2018 Takumi. All rights reserved.
//

import UIKit

final class ModalViewController: UIViewController {

    static func make() -> ModalViewController {
        let storyboard = UIStoryboard(name: "Modal", bundle: .main)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalViewController")
        return vc as! ModalViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        view.alpha = 0.5

        modalTransitionStyle = .crossDissolve
        modalPresentationStyle = .overFullScreen
    }

}
