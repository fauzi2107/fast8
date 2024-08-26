import 'package:fast8/core/handler/nav_handler.dart';
import 'package:flutter/services.dart';

import '../../ui_export.dart';
import '../locator.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({super.key,
    this.titleWidget,
    this.title,
    this.bgColor,
    this.onBackPressed,
    this.systemUiOverlayStyle,
    this.statusBarColor,
    this.actions = const <Widget>[],
    this.isCenter = true,
    this.showLeading = true,
    this.titleColor
  });

  final Widget? titleWidget;
  final String? title;
  final Color? bgColor, statusBarColor, titleColor;
  final Function()? onBackPressed;
  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final List<Widget> actions;
  final bool isCenter, showLeading;

  @override
  Widget build(BuildContext context) {
    // return empty widget if condition match
    if (titleWidget == null && '$title'.isEmpty) return const Offstage();

    return AppBar(
      title: titleWidget ?? MyText(title ?? '',
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          color: titleColor,
          fontSize: 24
        ),
      ),
      elevation: 0,
      backgroundColor: bgColor,
      leading: !showLeading ? null : MyBackButton(
        onPressed: onBackPressed ?? () => sl<NavHandler>().pop()),
      systemOverlayStyle: systemUiOverlayStyle ??
          SystemUiOverlayStyle.light.copyWith(
            statusBarColor: bgColor,
          ),
      actions: actions,
      centerTitle: isCenter,
      toolbarHeight: kToolbarHeight,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
