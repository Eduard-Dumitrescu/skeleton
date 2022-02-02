import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:skeleton/di/locator.config.dart';

@injectableInit
Future<void> configureInjection(String env) =>
    $initGetIt(DI.getIt, environment: env);

class DI {
  static final GetIt getIt = GetIt.I;
}
