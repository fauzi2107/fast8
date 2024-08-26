import 'package:bottom_sheet_bar/bottom_sheet_bar.dart';
import 'package:fast8/features/beranda/presentation/beranda_screen.dart';
import 'package:fast8/ui_export.dart';

abstract class BerandaState<T extends BerandaScreen> extends State<T>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  late final BottomSheetBarController navController;
  var wellnessOption = 'Terpopuler';

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    navController = BottomSheetBarController();
    super.initState();
  }

  onChangeTab(int index) {
    setState(() {

    });
  }

  onChangeWellness(String? option) {
    if ((option??'').isEmpty) return;

    setState(() {
      wellnessOption = option!;
    });
  }

  String get title {
    final today = DateTime.now();
    var timeOf = 'Pagi';
    if (today.hour >= 11)
      timeOf = 'Siang';
    else if (today.hour >= 15)
      timeOf = 'Sore';
    else if (today.hour >= 19)
      timeOf = 'Malam';

    return 'Selamat $timeOf';
  }
}