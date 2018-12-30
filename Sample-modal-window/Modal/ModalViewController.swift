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
        vc.modalPresentationStyle = .overCurrentContext
        return vc as! ModalViewController
    }

    @IBOutlet weak var dialogView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }

    func commonInit() {
        view.addGestureRecognizer(
            UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
        )
    }

    @objc func onTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        if dialogView.frame.contains(location) {
            return
        }

        GlobalModal.shared.dismiss(animated: false, completion: nil)
    }

    @IBAction func onOk(_ sender: UIButton) {
        GlobalModal.shared.dismiss(animated: false, completion: nil)
    }

}
