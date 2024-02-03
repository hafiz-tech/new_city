import '../utils/app_layout.dart';
import '../utils/dependencies.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({super.key, required this.text, required this.icon, required this.text1, required this.text2});
  final Text text, text1, text2;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.25,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text,
            const SizedBox(height: 11),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text1,
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                  ),
                  child: icon,
                )
              ],
            ),
            const SizedBox(height: 5),
            text2,
          ],
        ),
      ),
    );
  }
}
