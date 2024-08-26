import 'package:fast8/core/my_color.dart';

import '../../../../ui_export.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.controller, required this.onChanged});

  final TabController controller;
  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TabBar(
        controller: controller,
        onTap: onChanged,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyColor.primary
        ),
        dividerColor: Colors.transparent,
        isScrollable: false,
        indicatorSize: TabBarIndicatorSize.tab,
        padding: EdgeInsets.zero,
        tabs: ['Payuung Pribadi','Payuung Karyawan'].asMap().map((i, e) {
          final isSelected = controller.index == i;
          return MapEntry(i, MyText(e,
              fontSize: 14,
              color: isSelected ? Colors.white : Colors.grey,
              padding: EdgeInsets.symmetric(vertical: 8),
            ),
          );
        }).values.toList(),
      ),
    );
  }
}