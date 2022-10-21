//
//  UniversalAPIClient.swift
//  IAPSDK
//
//  Created by coolishbee on 2022/10/18.
//

import Foundation

@objcMembers
public class UniversalAPIClient: NSObject {
        
    public static let shared = UniversalAPIClient()
    
    var setup = false
    
    public func setupSDK()
    {
        guard !setup else {
            print("Trying to set configuration multiple times is not permitted.")
            return
        }
        setup = true
                                
    }        
    
    public func initBilling()
    {
        IAPManager.shared.setup(pidList: ["inapp1200", "com.gamepub.sdk.inapp1200", "com.gamepub.sdk.inapp2500"])
    }
    
    public func purchaseLaunch() {
        IAPManager.shared.purchase(productId: "inapp1200")
    }
}
