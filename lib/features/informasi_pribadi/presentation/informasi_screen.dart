import 'package:fast8/core/my_color.dart';

import '../../../ui_export.dart';

class InformasiScreen extends StatefulWidget {
  static const routeName = '/informasi';

  const InformasiScreen({super.key});

  @override
  State<InformasiScreen> createState() => _InformasiScreenState();
}

class _InformasiScreenState extends State<InformasiScreen> {
  
  var progress = 0.0;
  var position = 1;
  
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      titleWidget: MyText('Informasi Pribadi',
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bgColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: LinearProgressIndicator(
                    color: MyColor.primary,
                    backgroundColor: MyColor.primary.withOpacity(0.2),
                    value: progress,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(3, (index) {
                    final e = index + 1;
                    return InkWell(
                      customBorder: CircleBorder(
                        side: BorderSide()
                      ),
                      onTap: () {
                        setState(() {
                          position = e;
                          progress = position / 4;
                          if (position.isEven || position == 3) {
                            progress = (position + 1) / 4;
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyColor.primary,
                        ),
                        padding: EdgeInsets.all(16),
                        child: MyText('$e',
                          fontSize: 16,
                        )
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
