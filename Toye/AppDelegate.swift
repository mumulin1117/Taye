//
//  AppDelegate.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import SVProgressHUD
import SwiftyStoreKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        SVProgressHUD.setMinimumDismissTimeInterval(2)
        
        SwiftyStoreKit.completeTransactions(atomically: true) { toyeStorePurchases in
            for toyStoreP in toyeStorePurchases {
                
                if toyStoreP.transaction.transactionState == .purchased ||
                    toyStoreP.transaction.transactionState == .restored{
                    if toyStoreP.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(toyStoreP.transaction)
                    }
                }
            }
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Dmezfaapuxlgtt qCfoonlfuiogmutrwahtxidoqn".ty, sessionRole: connectingSceneSession.role)
    }
}

