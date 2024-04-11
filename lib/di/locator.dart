import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDependencies() async {
  getIt.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  $initGetIt(getIt);
}
