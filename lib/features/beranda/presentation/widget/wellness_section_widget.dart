import 'package:fast8/core/my_color.dart';
import 'package:fast8/features/beranda/presentation/widget/grid_menu_widget.dart';

import '../../../../ui_export.dart';
import '../../data/model/value_model.dart';

class WellnessSectionWidget extends StatelessWidget {
  const WellnessSectionWidget({super.key, required this.onChangeWellness, required this.onSelected});

  final String onSelected;
  final Function(String?)? onChangeWellness;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyText('Explore Wellness',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12)
                ),
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: DropdownButton<String>(
                  value: onSelected,
                  onChanged: onChangeWellness,
                  padding: EdgeInsets.zero,
                  isDense: true,
                  icon: Icon(Icons.keyboard_arrow_down_rounded),
                  items: ['Terpopuler','A to Z','Z to A','Harga Terendah','Harga Tertinggi'].map((e) {
                    return DropdownMenuItem<String>(
                      value: e,
                      child: MyText(e,
                        color: Colors.black,
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
        GridMenuWidget(
          crossAxisCount: 2,
          menus: wellness,
          iconSize: 60,
          labelAlign: TextAlign.left,
        ),
      ],
    );
  }
}
