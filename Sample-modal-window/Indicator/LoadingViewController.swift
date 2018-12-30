//
//  LoadingViewController.swift
//  Sample-modal-window
//
//  Created by NishiokaKohei on 30/12/2018.
//  Copyright © 2018 Takumi. All rights reserved.
//

import UIKit

final class LoadingViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!


    static func make() -> LoadingViewController {
        let storyboard = UIStoryboard(name: "Indicator", bundle: .main)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoadingViewController")
        vc.view.backgroundColor = .clear
        vc.modalPresentationStyle = .overCurrentContext
        return vc as! LoadingViewController
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        activityIndicator.startAnimating()
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        activityIndicator.stopAnimating()
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

}
