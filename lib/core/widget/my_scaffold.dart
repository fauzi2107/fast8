import 'package:flutter/services.dart';

import '../../../ui_export.dart';

class MyScaffold extends StatelessWidget {
  final Widget? body, titleWidget, fab;
  final Color bgColor;
  final Color? titleColor, appbarColor;
  final Function()? onBackPressed;
  final String? title;
  final bool showLeading, isCenter;
  final List<Widget> actions;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final Widget? bottomNavigation;

  const MyScaffold({super.key,
    this.body,
    this.bgColor = Colors.black,
    this.onBackPressed,
    this.titleWidget,
    this.title,
    this.showLeading = true,
    this.isCenter = true,
    this.titleColor,
    this.actions = const [],
    this.fab,
    this.appbarColor,
    this.systemUiOverlayStyle,
    this.bottomNavigation
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      backgroundColor: bgColor,
      floatingActionButton: fab,
      appBar: MyAppbar(
        onBackPressed: onBackPressed,
        title: title,
        titleColor: titleColor,
        titleWidget: titleWidget,
        bgColor: appbarColor,
        showLeading: showLeading,
        isCenter: isCenter,
        actions: actions,
        systemUiOverlayStyle: systemUiOverlayStyle,
      ),
      bottomNavigationBar: bottomNavigation,
    );
  }
}
