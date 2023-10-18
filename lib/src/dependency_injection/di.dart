// Copyright 2021 Fighttech.vn, Ltd. All rights reserved.

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './di.config.dart';

GetIt injector = GetIt.instance;

abstract class InjectorGet {
  T get<T extends Object>() => injector.get<T>();
}

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
