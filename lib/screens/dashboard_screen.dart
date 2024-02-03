import 'package:new_city/utils/app_layout.dart';
import '../chart/chart.dart';
import '../utils/dependencies.dart';
import '../widgets/card_widget.dart';
import '../widgets/card_widget2.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        leading: const Icon(Icons.search_rounded),
        actions: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/img.png'),
            radius: 16,
          ),
          const SizedBox(width: 50),
          DropdownButton<String>(
            onChanged: (value) {
              // Implement your dropdown functionality here
            },
            items: ['Option 1', 'Option 2', 'Option 3'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(width: 50),
        ],
      ),
      backgroundColor: const Color(0xffF2F7FB),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(Icons.home_outlined,
                          color: Colors.white, size: 35)),
                  const SizedBox(width: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Quicksand-SemiBold',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'lorem ipsum dolor sit amet, consectetur adipisicing elit',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'QuickSand-Regular',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: size.width * 0.45,
                    height: 450,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child:  Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sale Analytics',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              fontFamily: 'Quicksand-Bold',
                              color: Colors.black,
                            ),
                          ),
                          SaleChart(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Column(
                    children: [
                      CardWidgets(
                        text: Text(
                          'Maintenance Charges',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Regular',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        text1: Text(
                          '1,563',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Bold',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                          ),
                        ),
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        text2: Text(
                          'December (2023)',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Regular',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      CardWidgets(
                        text: Text(
                          'Maintenance Charges',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Regular',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        text1: Text(
                          '1,563',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Bold',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                          ),
                        ),
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        text2: Text(
                          'December (2023)',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Regular',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      CardWidgets(
                        text: Text(
                          'Maintenance Charges',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Regular',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        text1: Text(
                          '1,563',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Bold',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                          ),
                        ),
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        text2: Text(
                          'December (2023)',
                          style: TextStyle(
                            fontFamily: 'Quicksand-Regular',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardWidget2(
                    icon: Icon(Icons.house),
                    text: Text(
                      '2476',
                      style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    text1: Text(
                      'Total Plot',
                      style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CardWidget2(
                    icon: Icon(Icons.point_of_sale),
                    text: Text(
                      '843',
                      style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.redAccent,
                      ),
                    ),
                    text1: Text(
                      'Sale in Current Month',
                      style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CardWidget2(
                    icon: Icon(Icons.money),
                    text: Text(
                      '63%',
                      style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    text1: Text(
                      "Income in Current Month",
                      style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CardWidget2(
                    icon: Icon(Icons.currency_rupee),
                    text: Text(
                      '41M',
                      style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    text1: Text(
                      'Expense In Current Month',
                      style: TextStyle(
                        fontFamily: 'Quicksand-Regular',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
