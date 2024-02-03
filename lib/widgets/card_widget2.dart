import '../progressbar/progress_bar.dart';
import '../utils/app_layout.dart';
import '../utils/dependencies.dart';

class CardWidget2 extends StatelessWidget {
  const CardWidget2(
      {super.key, required this.text, required this.icon, required this.text1});

  final Text text, text1;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.18,
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
            const SizedBox(height: 11),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [icon, text],
            ),
            const SizedBox(height: 5),
            text1,
            const SizedBox(height: 15),
            const ProgressBar(),
          ],
        ),
      ),
    );
  }
}
