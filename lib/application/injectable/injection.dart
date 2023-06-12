import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/application/injectable/injection.config.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> setup() async {
  await $initGetIt(getIt);
}

@module
abstract class InjectionModule {
  //injecting third party libraries
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
