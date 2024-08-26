import 'package:fast8/features/beranda/presentation/widget/grid_menu_widget.dart';

import '../../../../ui_export.dart';
import '../../data/model/value_model.dart';

class KeuanganSectionWidget extends StatelessWidget {
  const KeuanganSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText('Produk Keuangan',
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 18,
          margin: EdgeInsets.only(left: 20),
        ),
        GridMenuWidget(
          crossAxisCount: 4,
          menus: keuanganList,
        ),
      ],
    );
  }
}
