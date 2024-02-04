import '../../tabels/block_list.dart';
import '../../utils/app_layout.dart';
import '../../utils/dependencies.dart';

class BlockListScreen extends StatelessWidget {
  const BlockListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
          backgroundColor: const Color(0xffF2F7FB),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue
                    ),
                    child: const Icon(Icons.landscape, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Block List',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Quicksand-SemiBold',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              BlockList(),
            ],
          )
      ),
    );
  }
}
