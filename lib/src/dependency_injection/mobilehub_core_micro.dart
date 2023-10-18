import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// short const => @microPackageInit
@InjectableInit.microPackage()
void initMobileHubCoreMicroPackage() {} // will not be called

GetIt injector = GetIt.instance;

abstract class InjectorGet {
  T get<T extends Object>() => injector.get<T>();
}
