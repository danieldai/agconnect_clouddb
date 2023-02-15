/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.
 */

package com.huawei.agconnectclouddb.exception;

import com.huawei.agconnect.cloud.database.exceptions.AGConnectCloudDBException;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import io.flutter.Log;

public class AGCCloudDBException extends Exception {
    private final String errorCode;
    private final String errorMessage;
    private final Map<String, Object> errorDetails = new HashMap<>();

    public AGCCloudDBException(String code, String message) {
        this(code, message, "PluginException");
    }

    private AGCCloudDBException(String code, String message, String exceptionType) {
        this.errorCode = code;
        this.errorMessage = message;
        this.errorDetails.put("exceptionType", exceptionType);

        Log.e("AGConnectCloudDBPlugin", String.format(Locale.ENGLISH, "(%s) %s: %s", exceptionType, this.errorCode, this.errorMessage));
    }

    public static AGCCloudDBException from(Exception e) {
        if (e instanceof AGCCloudDBException) {
            return (AGCCloudDBException) e;
        } else {
            if (e instanceof AGConnectCloudDBException) {
                final String errorCode = Integer.toString(((AGConnectCloudDBException) e).getCode());
                final String errorMessage = ((AGConnectCloudDBException) e).getErrMsg();
                return new AGCCloudDBException(errorCode, errorMessage, "SDKException");
            } else {
                final String errorCode = "UNKNOWN";
                final String errorMessage = e.getMessage();
                return new AGCCloudDBException(errorCode, errorMessage);
            }
        }
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public Map<String, Object> getErrorDetails() {
        return this.errorDetails;
    }
}
