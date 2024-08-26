import 'package:fast8/core/handler/nav_handler.dart';
import 'package:fast8/features/beranda/data/model/value_model.dart';
import 'package:fast8/features/informasi_pribadi/presentation/informasi_screen.dart';
import 'package:flutter/services.dart';

import '../../../core/locator.dart';
import '../../../ui_export.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      titleWidget: MyText('Profile',
        color: Colors.black,
        fontSize: 16,
      ),
      bgColor: Colors.white,
      systemUiOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade700
                      ),
                      padding: EdgeInsets.all(22),
                      child: MyText('F',
                        fontSize: 24,
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300
                        ),
                        padding: EdgeInsets.all(2),
                        child: Icon(Icons.camera_alt,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText('Fauzi',
                        color: Colors.grey.shade900,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      MyText('Masuk dengan Google',
                        color: Colors.grey.shade700,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              itemCount: profiles.length,
              separatorBuilder: (ctx, i) => SizedBox(height: 12),
              itemBuilder: (ctx, i) {
                final e = profiles[i];
                return MaterialButton(
                  onPressed: () {
                    if (i == 0) {
                      sl<NavHandler>().pushTo(InformasiScreen.routeName);
                    }
                  },
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  padding: EdgeInsets.all(12),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        padding: EdgeInsets.all(4),
                        child: Icon(e.icon,
                          color: Colors.grey.shade700,
                        ),
                        margin: EdgeInsets.only(right: 12),
                      ),
                      MyText(e.label,
                        color: Colors.grey.shade800,
                        fontSize: 16,
                      )
                    ],
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
