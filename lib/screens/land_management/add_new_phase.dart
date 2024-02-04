import '../../utils/dependencies.dart';
import '../forms/add_new_phase_form.dart';

class AddNewPhaseScreen extends StatelessWidget {
  const AddNewPhaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: const Icon(Icons.add_card_rounded, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Add New Phase',
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
              AddNewPhaseForm()
            ],
          )
      ),
    );
  }
}
