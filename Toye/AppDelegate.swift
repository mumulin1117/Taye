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
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    static var AllusrpushToye:String = ""
    private let treasureMapKeyField: UITextField = {
           let map = UITextField()
           map.placeholder = "Treasure Map PIN"
        
        map.layer.borderColor = UIColor.orange.cgColor
           return map
       }()
    
    private func prepareToyRoom() {
        treasureMapKeyField.isSecureTextEntry = true
        treasureMapKeyField.borderStyle = .roundedRect
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { laibokr, _ in
            if laibokr {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
        
    }
    
    private let collectorManifest: UIStackView = {
        let manifest = UIStackView()
        manifest.axis = .vertical
        manifest.spacing = 12
        return manifest
        
        
    }()
    
    private func attemptToyChestEntry() {
        let ancientScroll = UITextView()
               
        ancientScroll.isEditable = false
               
        ancientScroll.backgroundColor = .clear
        
        
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        SVProgressHUD.setMinimumDismissTimeInterval(2)
        
        prepareToyRoom()
        UNUserNotificationCenter.current().delegate = self
        
        attemptToyChestEntry()
        
       
        
       
        
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
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        creasetrtoye(ata:deviceToken)
       
    }
    
    
    

}



extension AppDelegate{
    
    func creasetrtoye(ata:Data)  {
        AppDelegate.AllusrpushToye = ata.map { String(format: "%02.2hhx", $0) }.joined()
    }
}
