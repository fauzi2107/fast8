import 'package:fast8/features/beranda/data/model/value_model.dart';

import '../../../../ui_export.dart';

class GridMenuWidget extends StatelessWidget {
  const GridMenuWidget({super.key,
    required this.crossAxisCount,
    required this.menus,
    this.iconSize = 24,
    this.labelAlign = TextAlign.center
  });

  final int crossAxisCount;
  final List<ValueModel> menus;
  final double iconSize;
  final TextAlign labelAlign;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 1.2
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: menus.map((e) {
        return Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Icon(e.icon,
                size: iconSize,
              ),
              MyText(e.label,
                color: Colors.black,
                align: labelAlign,
              ),
              if ((e.subLabel??'').isNotEmpty) ...{
                Align(
                  alignment: Alignment.centerLeft,
                  child: MyText(e.subLabel??'',
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 12),
                  ),
                )
              }
            ],
          ),
        );
      }).toList(),
    );
  }
}
