import '../utils/dependencies.dart';

class AppDrawer extends StatelessWidget {
   AppDrawer({super.key});
   var homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff1d2531),
      ),
      child: SafeArea(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/img.png", height: 100, width: 100,),
              ),
               ListTile(
                title: const Text("Dashboard", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'QuickSand-Regular',
                  fontSize: 16
                ),
                ),
                leading: const Icon(Icons.dashboard, color: Colors.white), //add icon
                onTap: (){
                  homeController.changeIndex(0);
                },
              ),
              ExpansionTile(
                title: const Text("Land Management", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'QuickSand-Regular',
                    fontSize: 16
                ),
                ),
                leading: const Icon(Icons.storage_sharp, color: Colors.white), //add icon
                childrenPadding: const EdgeInsets.only(left:60), //children padding
                children: [
                  ExpansionTile(
                    title: const Text("Phase Management", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Phase List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(1);
                        }
                      ),
                      ListTile(
                        title: const Text("Add New Phase", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(2);
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("Block Management", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Block List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(3);
                        },
                      ),
                      ListTile(
                        title: const Text("Add New Block", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(4);                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("Plot Management", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Plot List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(5);
                        },
                      ),
                      ListTile(
                        title: const Text("Add New Plot", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(6);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text("Customer Management", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'QuickSand-Regular',
                    fontSize: 16
                ),
                ),
                leading: const Icon(Icons.person, color: Colors.white),
                childrenPadding: const EdgeInsets.only(left:60), //children padding
                children: [
                  ListTile(
                    title: const Text("Customer List", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 14
                    ),
                    ),
                    onTap: (){
                      homeController.changeIndex(7);
                    },
                  ),
                  ListTile(
                    title: const Text("Add New Customer", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 14
                    ),
                    ),
                    onTap: (){
                      homeController.changeIndex(8);
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text("Plot Management", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'QuickSand-Regular',
                    fontSize: 16
                ),
                ),
                leading: const Icon(Icons.storage_sharp, color: Colors.white), //add icon
                childrenPadding: const EdgeInsets.only(left:60), //children padding
                children: [
                  ExpansionTile(
                    title: const Text("Booking Management", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Plot Booking List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(9);
                        },
                      ),
                      ListTile(
                        title: const Text("Add New Plot Booking", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(10);
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("Plot Transfer", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Applied NDC List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(11);
                        },
                      ),
                      ListTile(
                        title: const Text("Add New NDC", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(12);
                        },
                      ),
                    ],
                  ),

                ],
              ),
              ExpansionTile(
                title: const Text("Payment Management", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'QuickSand-Regular',
                    fontSize: 16
                ),
                ),
                leading: const Icon(Icons.storage_sharp, color: Colors.white), //add icon
                childrenPadding: const EdgeInsets.only(left:60), //children padding
                children: [
                  ExpansionTile(
                    title: const Text("Plot Installment", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Paid Installment List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(13);
                        },
                      ),
                      ListTile(
                        title: const Text("Pending Installment List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(14);
                        },
                      ),
                      ListTile(
                        title: const Text("Pay Installment", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(15);
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("Service Charges", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Paid Charges List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(16);
                        },
                      ),
                      ListTile(
                        title: const Text("Pending Charges List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(17);
                        },
                      ),
                      ListTile(
                        title: const Text("Pay Service Charges", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(18);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text("Payroll Management", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'QuickSand-Regular',
                    fontSize: 16
                ),
                ),
                leading: const Icon(Icons.storage_sharp, color: Colors.white), //add icon
                childrenPadding: const EdgeInsets.only(left:60), //children padding
                children: [
                  ExpansionTile(
                    title: const Text("Employee Management", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Department List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(19);
                        },
                      ),
                      ListTile(
                        title: const Text("Designation List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(20);
                        },
                      ),
                      ListTile(
                        title: const Text("Employees List", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(21);
                        },
                      ),
                      ListTile(
                        title: const Text("Employees Attendance", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(22);
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("Payroll", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'QuickSand-Regular',
                        fontSize: 16
                    ),
                    ),
                    childrenPadding: const EdgeInsets.only(left:60), //children padding
                    children: [
                      ListTile(
                        title: const Text("Monthly Payroll", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'QuickSand-Regular',
                            fontSize: 14
                        ),
                        ),
                        onTap: (){
                          homeController.changeIndex(23);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}







