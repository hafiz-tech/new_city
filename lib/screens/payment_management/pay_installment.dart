import '../../utils/dependencies.dart';
import '../forms/pay_installment_form.dart';

class PayInstallmentScreen extends StatelessWidget {
  const PayInstallmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
          backgroundColor: const Color(0xffF2F7FB),
          body: SingleChildScrollView(
            child: Column(
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
                      'Plot Installment Payment',
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
                PayPlotInstallment()
              ],
            ),
          )
      ),
    );
  }
}
