import 'package:get_it/get_it.dart';

import 'handler/nav_handler.dart';

GetIt sl = GetIt.I;

setupLocator() {
  sl.registerLazySingleton(() => NavHandler());
}