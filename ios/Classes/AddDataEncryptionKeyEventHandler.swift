// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

import Foundation
import AGConnectDatabase

class AddDataEncryptionKeyEventHandler: NSObject, FlutterStreamHandler {
    let agcCloudDB = AGConnectCloudDB.init()
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        
        DispatchQueue.main.async { [self] in
            agcCloudDB.addDataEncryptionKeyCallback { () -> Bool in
                events(true)
                return true
            }
        }
        return nil
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        return nil
    }
}
