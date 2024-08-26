import 'package:fast8/core/my_color.dart';
import 'package:fast8/features/beranda/presentation/widget/grid_menu_widget.dart';

import '../../../../ui_export.dart';
import '../../data/model/value_model.dart';

class KategoriSectionWidget extends StatelessWidget {
  const KategoriSectionWidget({super.key});

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
              MyText('Kategori Pilihan',
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8)
                ),
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    MyText('Wishlist',
                      color: Colors.black,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MyColor.primary,
                        shape: BoxShape.circle
                      ),
                      margin: EdgeInsets.only(left: 4),
                      padding: EdgeInsets.all(4),
                      child: MyText('0'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        GridMenuWidget(
          crossAxisCount: 4,
          menus: kategoriList,
        ),
      ],
    );
  }
}
