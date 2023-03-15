/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2019-2020. All rights reserved.
 * Generated by the CloudDB ObjectType compiler.  DO NOT EDIT!
 */
package com.huawei.agconnectclouddb.objecttypes;

import com.huawei.agconnect.cloud.database.CloudDBZoneObject;
import com.huawei.agconnect.cloud.database.ObjectTypeInfo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * Definition of ObjectType Helper.
 *
 * @since 2023-03-15
 */
public final class ObjectTypeInfoHelper {
    private static final int FORMAT_VERSION = 2;
    private static final int OBJECT_TYPE_VERSION = 25;

    public static ObjectTypeInfo getObjectTypeInfo() {
        ObjectTypeInfo objectTypeInfo = new ObjectTypeInfo();
        objectTypeInfo.setFormatVersion(FORMAT_VERSION);
        objectTypeInfo.setObjectTypeVersion(OBJECT_TYPE_VERSION);
        List<Class<? extends CloudDBZoneObject>> objectTypeList = new ArrayList<>();
        Collections.addAll(objectTypeList, UserPointLog.class, UserUsageLog.class, UserInfo.class, UserFeedback.class, UserPoint.class);
        objectTypeInfo.setObjectTypes(objectTypeList);
        return objectTypeInfo;
    }
}
