//
//  SceneDelegate.swift
//  Uber-clone
//
//  Created by Nihad on 1/5/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = scene as? UIWindowScene else { return }
        
        window = UIWindow(windowScene: scene)
//        window?.rootViewController = UINavigationController(rootViewController: LoginViewController())
        window?.rootViewController = HomeViewController()
        window?.makeKeyAndVisible()
    }
}
