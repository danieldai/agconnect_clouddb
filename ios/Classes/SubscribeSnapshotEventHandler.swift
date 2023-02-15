// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

import Foundation
import AGConnectDatabase

class SubscribeSnapshotEventHandler: NSObject, FlutterStreamHandler {
    private var _listener: AGCCloudDBListenerHandler?
    private var _dbZone: AGCCloudDBZone?
    private var _policy: AGCCloudDBQueryPolicy?
    private var _query: AGCCloudDBQuery?
    
    func SubscribeSnapshotEventHandler(dbZone: AGCCloudDBZone, policy: AGCCloudDBQueryPolicy ,query: AGCCloudDBQuery) {
        _dbZone = dbZone
        _query = query
        _policy = policy
    }
    
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        var dictionary = [String: Any?]()
        _listener = _dbZone!.subscribeSnapshot(with: _query!, policy: _policy!) { (snapshot, error) in
            if error != nil {
                self.postError(error: error, result: events)
                return }
            if let snapshot = snapshot {
                dictionary["isFromCloud"] = snapshot.isFromCloud()
                dictionary["hasPendingWrites"] = snapshot.hasPendingWrites()
                if let snapshotObjects = FlutterCloudDBUtils.resolveSnapshot(array: snapshot.snapshotObjects()) {
                    dictionary["snapshotObjects"] = snapshotObjects
                }
                if let deletedObjects = FlutterCloudDBUtils.resolveSnapshot(array: snapshot.deletedObjects()) {
                    dictionary["deletedObjects"] = deletedObjects
                }
                if let upsertedObjects = FlutterCloudDBUtils.resolveSnapshot(array: snapshot.upsertedObjects()) {
                    dictionary["upsertedObjects"] = upsertedObjects
                }
                events(dictionary)
            }
        }
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        print("subscribeSnapshot listener removed")
        _listener?.remove()
        return nil
    }
    
    func postError(error: Error?, result: FlutterEventSink) {
        let error = error as NSError?
        if error?.userInfo["PluginException"] != nil {
            result(FlutterError(
                    code: error?.userInfo["PluginException"] as? String ?? "" ,
                    message: error?.localizedDescription,
                    details: [
                        "exceptionType": "PluginException"
                    ]))
        } else {
            result(FlutterError(
                    code: error?.code.description ?? "",
                    message: error?.localizedDescription,
                    details: [
                        "exceptionType": "SDKException"
                    ]))
        }
    }
}
