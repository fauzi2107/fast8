import 'dart:io';

import 'package:fast8/features/beranda/presentation/beranda_screen.dart';
import 'package:fast8/features/informasi_pribadi/presentation/informasi_screen.dart';
import 'package:fast8/features/profile/presentation/profile_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../ui_export.dart';

class NavHandler {
  // global navigation key
  final navKey = GlobalKey<NavigatorState>();

  // func action back to previous screen with optional return value
  void pop({Object? data}) => navKey.currentState!.pop(data);

  // func action checking whether screen can be popped or has previous screen
  bool canPop() => navKey.currentState!.canPop();

  // func action to next screen with [routeName] and optional passing an [arguments]
  Future<T?> pushTo<T extends Object>(String routeName, {
    Object? arguments
  }) async {
    return await navKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  void afterBuild(Function(Duration) callback) {
    WidgetsBinding.instance.addPostFrameCallback(callback);
  }
}

Route? onGenerateRoute(RouteSettings settings) {
  Route<dynamic>? builder({
    Widget child = const Scaffold(),
    Widget Function(BuildContext context)? builder
  }) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: builder ?? (ctx) => child,
        settings: settings,
      );
    }

    return MaterialPageRoute(
      builder: builder ?? (ctx) => child,
      settings: settings,
    );
  }

  if (settings.name == BerandaScreen.routeName) {
    return builder(child: const BerandaScreen());
  } else if (settings.name == ProfileScreen.routeName) {
    return builder(child: const ProfileScreen());
  } else if (settings.name == InformasiScreen.routeName) {
    return builder(child: const InformasiScreen());
  }

  return null;
}