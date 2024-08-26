import 'package:fast8/core/handler/nav_handler.dart';

import 'core/locator.dart';
import 'ui_export.dart';

void main() {
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payuung Pribadi',
      navigatorKey: sl<NavHandler>().navKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
