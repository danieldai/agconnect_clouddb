/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.
 */

package com.huawei.agconnectclouddb.handlers;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;

import com.huawei.agconnect.AGConnectInstance;
import com.huawei.agconnect.cloud.database.AGConnectCloudDB;

import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;

public class OnDataEncryptionKeyChangeStreamHandler implements StreamHandler {
    public OnDataEncryptionKeyChangeStreamHandler(Activity activity) {
        if (AGConnectInstance.getInstance() == null) {
            AGConnectInstance.initialize(activity.getApplicationContext());
        }
        try {
            AGConnectCloudDB.getInstance();
        } catch (Exception e) {
            AGConnectCloudDB.initialize(activity.getApplicationContext());
        }
    }

    @Override
    public void onListen(Object arguments, EventSink eventSink) {
        AGConnectCloudDB.getInstance().addDataEncryptionKeyListener(() -> {
            final boolean isNeedFetchDataEncryptionKey = true;
            new Handler(Looper.getMainLooper()).post(() -> eventSink.success(isNeedFetchDataEncryptionKey));
            return isNeedFetchDataEncryptionKey;
        });
    }

    @Override
    public void onCancel(Object arguments) {
    }
}
