//
//  ToyBTrailwellgchun.swift
//  Toye
//
//  Created by mumu on 2025/3/14.
//

import UIKit
@preconcurrency import FBSDKCoreKit
import UIKit
import Alamofire
import SwiftyStoreKit
import SVProgressHUD
class ToyBTrailwellgchun: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

class UITAreadyLogrHallowcos: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var fmePlaungView:WKWebView?
  
    private  var fmersousifgnin = false
    private var okaeenteanceFME:String
    
    init(wonderfulnowing:String,islogingpagepalt:Bool) {
        okaeenteanceFME = wonderfulnowing
        
        fmersousifgnin = islogingpagepalt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        fmePlaungView?.configuration.userContentController.add(self, name: "Pay")
        fmePlaungView?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        fmePlaungView?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.image = UIImage(named: "genfFengBd")
        matherlang.contentMode = .scaleAspectFill
        view.addSubview(matherlang)
        
        let  lsignintouchHTL = UIButton.init()
        lsignintouchHTL.backgroundColor = .white
        lsignintouchHTL.layer.cornerRadius = 26
        lsignintouchHTL.layer.masksToBounds = true
        lsignintouchHTL.setTitle("Quick opening", for: .normal)
        lsignintouchHTL.setTitleColor(UIColor(red: 0.91, green: 0.33, blue: 0.97, alpha: 1), for: .normal)
        lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        lsignintouchHTL.isUserInteractionEnabled = false
        view.addSubview(lsignintouchHTL)
      
        lsignintouchHTL.snp.makeConstraints { make in
            make.height.equalTo(56)
            make.width.equalTo(190)
            
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 100)
        }
        
        if fmersousifgnin == true{
            lsignintouchHTL.isHidden = false
            matherlang.image = UIImage(named: "genfFengBd")
        }else{
            lsignintouchHTL.isHidden = true
            matherlang.image = UIImage(named: "ToyeLaunch")
        }
        
        
      
        
       
        
        
         
         
        let fmeviewstys = WKWebViewConfiguration()
        fmeviewstys.allowsAirPlayForMediaPlayback = false
        fmeviewstys.allowsInlineMediaPlayback = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.mediaTypesRequiringUserActionForPlayback = []
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        fmePlaungView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        fmePlaungView?.isHidden = true
        fmePlaungView?.translatesAutoresizingMaskIntoConstraints = false
        fmePlaungView?.scrollView.alwaysBounceVertical = false
        
        fmePlaungView?.scrollView.contentInsetAdjustmentBehavior = .never
        fmePlaungView?.navigationDelegate = self
        
        fmePlaungView?.uiDelegate = self
        fmePlaungView?.allowsBackForwardNavigationGestures = true
   
        if let urewlinsdfme = URL.init(string: okaeenteanceFME) {
            fmePlaungView?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(fmePlaungView!)
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        fmePlaungView?.isHidden = false
        
       
        SVProgressHUD.dismiss()
        
        if fmersousifgnin == true {
            
            SVProgressHUD.showSuccess(withStatus: "Login successful")
            fmersousifgnin = false
            
        }
       
#if DEBUG
        let adventurepatherFME = "/api/device/save"
         let versationParamFME: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :UITLoakerinder.pnolyert.onlyidduserFME,
            "pushToken" :AppDelegate.appUITPushToken,

         ]
        #else
        let adventurepatherFME = "/halloween/darking/owni"
        
      
         let versationParamFME: [String: Any] = [
            "satisfying": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "minded":"APPSTORE",
            "ience":UIDevice.current.systemName,
             "astbinlong":UIDevice.current.systemVersion,
             "tallkab" : "iPhone",
            "globals" :UITLoakerinder.pnolyert.onlyidduserFME,
            "pumpkin" :AppDelegate.appUITPushToken,
         
         ]
#endif
        UITLoakerinder.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, stallParFME: versationParamFME)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
       
        let angagingFME =  "payload****transactionId****type****direct****Pay****Close".components(separatedBy: "****")
        let oertpinkFME =  "No have receipt****/api/ios/v2/pay****The purchase was successful!".components(separatedBy: "****")
       
        if message.name == angagingFME[4],
            let mesgidhFME = message.body as? String {
         

            view.isUserInteractionEnabled = false
            SVProgressHUD.show()
           
            let alllPayblaIDlist = [("mziptobdffjrkwop",400,"0.99"),
                             ("typggtcdcactexxz",800,"1.99"),
                                    ("hztfywacequnjyex",1200,"2.99"),
                             ("qasbwittmrkyaoeb",2450,"4.99"),
                               
                             ("aeoyntegsumkrzek",4900,"9.99"),
                             ("bwricclminynikml",9800,"19.99"),
                                    ("vsmqwdgzkpxjlrnea",15000,"29.99"),
                             
                             ("svgqcfknmveefdhi",24500,"49.99"),
                                  
                                    ("fobtcunvwsxhdkelz",36000,"69.99"),
                                  
                             ("pdigcxzrfymzptly",49000,"99.99")]
        
      
            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
                lovercoolFME.0 == mesgidhFME
            }).first {
                
                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("amount") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
            }
            
            SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
                SVProgressHUD.dismiss()
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        SVProgressHUD.showError(withStatus: oertpinkFME[0])
                       
                        return
                      }
                    

                    UITLoakerinder.pnolyert.installEnterRemallLastNetiFME( oertpinkFME[1], stallParFME: [
                        angagingFME[0]:ticketData.base64EncodedString(),
                        angagingFME[1]:gettransID,
                        angagingFME[2]:angagingFME[3]
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            if  let paygetingItemFME =  alllPayblaIDlist.filter({ lovercoolFME in
                                lovercoolFME.0 == mesgidhFME
                            }).first {
                                
                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("totalPrice") : paygetingItemFME.2,AppEvents.ParameterName.init("currency"):"USD"])
                            }
                            SVProgressHUD.showError(withStatus: oertpinkFME[2])
                           
                            
                           
                        case .failure(let error):
                            
                            
                            SVProgressHUD.showError(withStatus:"Error")
                            
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                       
                        SVProgressHUD.showError(withStatus:error.localizedDescription)
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == angagingFME[5] {
          
            UserDefaults.standard.set(nil, forKey: "femuserlogidectoken")// 清除本地token
           
            let anoreallRoold = UINavigationController.init(rootViewController: UITPretendLogrHallowcos.init())
            anoreallRoold.navigationBar.isHidden = true
            
            var windowtoye:UIWindow?
            if let window = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                windowtoye = window
                
            }
            
            windowtoye?.rootViewController = anoreallRoold
        }
    }
    
}
