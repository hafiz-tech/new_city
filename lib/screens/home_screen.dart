import 'package:new_city/screens/dashboard_screen.dart';
import 'package:new_city/screens/payment_management/pay_installment.dart';

import '../utils/dependencies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F7FB),
      body: Row(
        children: [
          Expanded(
            child: AppDrawer(
            ),
          ),
          Obx(() =>
              Expanded(
                  flex: 4,
                  child:
                  homeController.selectedIndex.value==0? const DashboardScreen():
                  homeController.selectedIndex.value==1?const PhaseListScreen():
                  homeController.selectedIndex.value==2?const AddNewPhaseScreen():
                  homeController.selectedIndex.value==3?const BlockListScreen():
                  homeController.selectedIndex.value==4?const AddNewBlockScreen():
                  homeController.selectedIndex.value==5?const PlotListScreen():
                  homeController.selectedIndex.value==6?const AddNewPlotScreen():
                  homeController.selectedIndex.value==7?const CustomerListScreen():
                  homeController.selectedIndex.value==8?const AddNewCustomerScreen():
                  homeController.selectedIndex.value==9?const PlotBookingListScreen():
                  homeController.selectedIndex.value==10?const AddNewPlotBookingScreen():
                  homeController.selectedIndex.value==11?const AppliedNDCListScreen():
                  homeController.selectedIndex.value==12?const AddNewNDCScreen():
                  homeController.selectedIndex.value==13?const PaidInstallmentListScreen():
                  homeController.selectedIndex.value==14?const PendingInstallmentListScreen():
                  homeController.selectedIndex.value==15?const PayInstallmentScreen():
                  homeController.selectedIndex.value==16?const PaidChargesListScreen():
                  homeController.selectedIndex.value==17?const PendingChargesListScreen():
                  homeController.selectedIndex.value==18?const PayServiceChargesScreen():
                  homeController.selectedIndex.value==19?const DepartmentListScreen():
                  homeController.selectedIndex.value==20?const DesignationListScreen():
                  homeController.selectedIndex.value==21?const EmployeesListScreen():
                  homeController.selectedIndex.value==22?const EmployeeAttendanceScreen():
                  homeController.selectedIndex.value==23?const MonthlyPayrollScreen():
                      Container()
              ),
          ),
        ],
      ),
    );
  }
}
