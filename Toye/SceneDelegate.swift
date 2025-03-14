//
//  SceneDelegate.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import IQKeyboardManagerSwift
import RTRootNavigationController
import MMKV

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        IQKeyboardManager.shared.isEnabled = true
        if IQKeyboardManager.shared.isEnabled == true {
            IQKeyboardManager.shared.resignOnTouchOutside = true
        }
        
        if window != nil {
            window?.rootViewController = RTRootNavigationController(rootViewController: ToyBaylaungchun())
        }
//        if let toyeUser = UserDefaults.standard.string(forKey: "toyeUser") {
//            ToyeStorage.shared.initialize(identifier: toyeUser)
//            let toyeTabbar = ToyeTabbarViewController()
//            if window != nil {
//                window?.rootViewController = toyeTabbar
//            }
//            
//        }else{
//            let inLoginControl = ToyeFirstLoginViewController(nibName: "ToyeFirstLoginViewController", bundle: nil)
//            if window != nil {
//                window?.rootViewController = RTRootNavigationController(rootViewController: inLoginControl)
//            }
//        }
        let entetViewsVioer = UITextField()
        entetViewsVioer.isSecureTextEntry = true
        if (!window!.subviews.contains(entetViewsVioer)) {
            window!.addSubview(entetViewsVioer)
           
            entetViewsVioer.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            entetViewsVioer.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(entetViewsVioer.layer)
            if #available(iOS 17.0, *) {
                
                entetViewsVioer.layer.sublayers?.last?.addSublayer(window!.layer)
                return
            }
            
            entetViewsVioer.layer.sublayers?.first?.addSublayer(window!.layer)
        }
        window?.makeKeyAndVisible()
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }
}

