import 'package:bottom_sheet_bar/bottom_sheet_bar.dart';
import 'package:fast8/core/handler/nav_handler.dart';
import 'package:fast8/core/my_color.dart';
import 'package:fast8/features/beranda/data/model/value_model.dart';
import 'package:fast8/features/beranda/presentation/beranda_state.dart';
import 'package:fast8/features/beranda/presentation/widget/grid_menu_widget.dart';
import 'package:fast8/features/beranda/presentation/widget/header_widget.dart';
import 'package:fast8/features/beranda/presentation/widget/kategori_section_widget.dart';
import 'package:fast8/features/beranda/presentation/widget/keuangan_section_widget.dart';
import 'package:fast8/features/beranda/presentation/widget/wellness_section_widget.dart';
import 'package:fast8/features/profile/presentation/profile_screen.dart';

import '../../../core/locator.dart';
import '../../../ui_export.dart';

class BerandaScreen extends StatefulWidget {
  static const routeName = '/';

  const BerandaScreen({super.key});

  @override
  BerandaState<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends BerandaState<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      bgColor: Colors.white,
      appbarColor: MyColor.primary,
      showLeading: false,
      titleWidget: MyText(title,
        fontSize: 14,
        color: Colors.white.withOpacity(0.8),
      ),
      actions: [
        IconButton(
          onPressed: () {

          },
          icon: const Icon(Icons.notifications_none_rounded),
          color: Colors.white,
          iconSize: 24,
        ),
        IconButton(
          onPressed: () {
            sl<NavHandler>().pushTo(ProfileScreen.routeName);
          },
          icon: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
              padding: const EdgeInsets.all(8),
              child: const Icon(Icons.person)),
          color: Colors.grey.shade400,
          iconSize: 24,
        ),
      ],
      isCenter: false,
      body: BottomSheetBar(
        backdropColor: Colors.black.withOpacity(0.2),
        locked: false,
        controller: navController,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(32.0),
        ),
        borderRadiusExpanded: const BorderRadius.vertical(
          top: Radius.circular(32.0),
        ),
        boxShadows: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 3.0,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        isDismissable: true,
        willPopScope: true,
        expandedBuilder: (scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(32)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 2
                )
              ]
            ),
            child: GridMenuWidget(
              crossAxisCount: 3,
              menus: mainMenus,
            ),
          );
        },
        collapsed: GestureDetector(
          onTap: () => navController.expand(),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32)
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 2
                  )
                ]
            ),
            child: GridMenuWidget(
              crossAxisCount: 3,
              menus: mainMenus.sublist(0, 3),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: MyColor.primary,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(22)
                  )
              ),
              child: Column(
                children: [
                  HeaderWidget(
                    controller: tabController,
                    onChanged: onChangeTab,
                  ),
                  const KeuanganSectionWidget(),
                  const KategoriSectionWidget(),
                  WellnessSectionWidget(
                    onSelected: wellnessOption,
                    onChangeWellness: onChangeWellness,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      // bottomNavigation: MainMenu(),
    );
  }
}
