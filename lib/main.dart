import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/constants/app_language.dart';
import 'core/database/hive_storage_service.dart';
import 'core/dependency_injection/injector.dart';
import 'main/app.dart';
import 'main/app_env.dart';

void main() => mainCommon(AppEnvironment.prod);

Future<void> mainCommon(AppEnvironment environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  EnvInfo.initialize(environment);
  Map<String, Map<String, String>> translations = await loadTranslations();
  await init();
  await injector<HiveService>().init();
  runApp(MyApp(languageConfig: translations));
}
