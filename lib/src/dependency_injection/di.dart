// Copyright 2021 Fighttech.vn, Ltd. All rights reserved.

import 'package:injectable/injectable.dart';

import './di.config.dart';
import 'mobilehub_core_micro.dart';

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async =>
    init(injector,
        environment: environment, environmentFilter: environmentFilter);
