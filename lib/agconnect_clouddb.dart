// Copyright (c) Huawei Technologies Co., Ltd. 2021-2021. All rights reserved.

library agconnect_clouddb;

import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

part 'src/constants/key_constants.dart';
part 'src/constants/method_constants.dart';
part 'src/constants/query_constants.dart';
part 'src/constants/transaction_constants.dart';
part 'src/enums/zone_access_property.dart';
part 'src/enums/zone_query_policy.dart';
part 'src/enums/zone_sync_property.dart';
part 'src/exceptions/exception.dart';
part 'src/models/zone_config.dart';
part 'src/models/zone_snapshot.dart';
part 'src/agconnect_clouddb.dart';
part 'src/agconnect_clouddbzone.dart';
part 'src/query.dart';
part 'src/transaction.dart';

const MethodChannel _methodChannel = MethodChannel(
  'com.huawei.agconnectclouddb/methodChannel/',
);
const EventChannel _onDataEncryptionKeyChangeEventChannel = EventChannel(
  'com.huawei.agconnectclouddb/eventChannel/onDataEncryptionKeyChange',
);
const EventChannel _onEventEventChannel = EventChannel(
  'com.huawei.agconnectclouddb/eventChannel/onEvent',
);
