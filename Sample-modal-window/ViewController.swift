//
//  ViewController.swift
//  Sample-model-window
//
//  Created by NishiokaKohei on 30/12/2018.
//  Copyright © 2018 Takumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onGlobalModal(_ sender: UIButton) {
        let modal = ModalViewController.make()
        GlobalModal.shared.present(modal, animated: false, completion: nil)
    }

    @IBAction func onLoading(_ sender: UIButton) {
        let loading = LoadingViewController.make()
        GlobalModal.shared.present(loading, animated: false) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
                GlobalModal.shared.dismiss(animated: false, completion: nil)
            })
        }
    }


}

