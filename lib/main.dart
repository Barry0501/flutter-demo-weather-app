import 'app_delegate.dart';
import 'src/core/configurations/env_prod.dart';

void main(List<String> args) {
  environmentProd.addAll({'isStudio': false});
  // environmentProd.addAll({'isStudio': false});

  AppDelegate().run(environmentProd);
}
