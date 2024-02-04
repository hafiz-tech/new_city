import '../utils/app_layout.dart';
import '../utils/dependencies.dart';

class CurrentMonthIncomeCard extends StatelessWidget {
  const CurrentMonthIncomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.25,
      height: 375,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Current Month Income", style: TextStyle(
              fontFamily: 'Quicksand-SemiBold',
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black
            ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("100,000", style: TextStyle(
                    fontFamily: 'Quicksand-SemiBold',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black
                ),
                ),
                const Text("Installment", style: TextStyle(
                    fontFamily: 'Quicksand-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black
                ),
                ),
                Container(
                  width: 37,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange
                  ),
                  child: const Center(
                    child: Text("43%", style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white
                    ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 13),
            const Divider(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("43", style: TextStyle(
                    fontFamily: 'Quicksand-SemiBold',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black
                ),
                ),
                const Text("Down Payments", style: TextStyle(
                    fontFamily: 'Quicksand-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black
                ),
                ),
                Container(
                  width: 37,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green
                  ),
                  child: const Center(
                    child: Text("58%", style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white
                    ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 13),
            const Divider(),
            const SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("230", style: TextStyle(
                    fontFamily: 'Quicksand-SemiBold',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black
                ),
                ),
                const Text("Transfer Fee", style: TextStyle(
                    fontFamily: 'Quicksand-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black
                ),
                ),
                Container(
                  width: 37,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red
                  ),
                  child: const Center(
                    child: Text("30%", style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white
                    ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 13),
            const Divider(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("480", style: TextStyle(
                    fontFamily: 'Quicksand-SemiBold',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black
                ),
                ),
                const Text("Maintenance Charges", style: TextStyle(
                    fontFamily: 'Quicksand-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black
                ),
                ),
                Container(
                  width: 37,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red
                  ),
                  child: const Center(
                    child: Text("30%", style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white
                    ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 13),
            const Divider(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("100,000", style: TextStyle(
                    fontFamily: 'Quicksand-SemiBold',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black
                ),
                ),
                const Text("Rent", style: TextStyle(
                    fontFamily: 'Quicksand-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black
                ),
                ),
                Container(
                  width: 37,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange
                  ),
                  child: const Center(
                    child: Text("43%", style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white
                    ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
