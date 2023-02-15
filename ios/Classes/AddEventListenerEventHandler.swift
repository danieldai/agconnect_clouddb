// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

import Foundation
import AGConnectDatabase

class AddEventListenerEventHandler: NSObject, FlutterStreamHandler {
    
    let agcCloudDB = AGConnectCloudDB.init()
    
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        
        agcCloudDB.addEventCallback { result in
            
            switch result {
            case AGCCloudDBEventType.userKeyChanged:
                events("USER_KEY_CHANGED")
            default:
                events("UNKNOWN_EVENT_TYPE")
            }
        }
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        return nil
    }
}
