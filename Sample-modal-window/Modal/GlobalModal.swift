//
//  GlobalModal.swift
//  Sample-modal-window
//
//  Created by NishiokaKohei on 30/12/2018.
//  Copyright © 2018 Takumi. All rights reserved.
//

import UIKit

///
/// グローバルにモーダルを表示／非表示するクラス
///
class GlobalModal {

    static let shared = GlobalModal()

    private let window: UIWindow = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .clear
        return window
    }()

    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?) {
        dismiss(animated: animated, completion: nil)
        
        let rootViewController = UIViewController()
        rootViewController.view.backgroundColor = .clear
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        rootViewController.present(viewController, animated: animated, completion: completion)
    }

    func dismiss(animated: Bool, completion: (() -> Void)?) {
        let completion: () -> Void = {
            completion?()
            self.window.isHidden = true
        }
        window.rootViewController?.presentedViewController?.dismiss(
            animated: animated,
            completion: completion
        )
    }

}
