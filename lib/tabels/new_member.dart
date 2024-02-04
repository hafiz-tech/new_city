import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../utils/app_layout.dart';
import '../utils/dependencies.dart';

class NewMemberGrid extends StatefulWidget {
  NewMemberGrid({Key? key}) : super(key: key);

  @override
  _NewMemberGridState createState() => _NewMemberGridState();
}

class _NewMemberGridState extends State<NewMemberGrid> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 1,
      //height: 600,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "New Members",
              style: TextStyle(
                  fontFamily: 'Quicksand-SemiBold',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black),
            ),
            const SizedBox(height: 30),
            SfDataGrid(
              source: employeeDataSource,
              columnWidthMode: ColumnWidthMode.fill,
              sortingGestureType: SortingGestureType.tap,
              columns: <GridColumn>[
                GridColumn(
                    columnName: 'name',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.centerLeft,
                        child: const Text('Name', style:
                        TextStyle(
                            fontFamily: 'Quicksand-SemiBold',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        ),
                    ),
                ),
                GridColumn(
                    columnName: 'p_size',
                    label: Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Plot Size',style:
                        TextStyle(
                        fontFamily: 'Quicksand-SemiBold',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        ))),
                GridColumn(
                    columnName: 'block',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Block', style:
                        TextStyle(
                          fontFamily: 'Quicksand-SemiBold',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                          //overflow: TextOverflow.ellipsis,
                        ))),
                GridColumn(
                  columnName: 'd_payment',
                  label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Down Payment' , style:
                    TextStyle(
                      fontFamily: 'Quicksand-SemiBold',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),),
                  ),
                ),
                GridColumn(
                  columnName: 'r_date',
                  label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Registration Date' , style:
                    TextStyle(
                      fontFamily: 'Quicksand-SemiBold',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee('James', '5 Marla', 'Gold', 20000, 'Dec 29, 2023'),
      Employee('Kathryn', '5 Marla', 'Gold', 30000, 'Dec 29, 2023'),
      Employee('Lara', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      Employee('Michael', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      Employee('Martin', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      Employee('Newberry', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      Employee('Balnc', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      Employee('Perry', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      Employee('Gable', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      Employee('Grimes', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Employee {
  /// Creates the employee class with required details.
  Employee(this.p_size, this.name, this.block, this.d_payment, this.r_date);

  /// Id of an employee.
  final String p_size;

  /// Name of an employee.
  final String name;

  /// Designation of an employee.
  final String block;

  /// Salary of an employee.
  final int d_payment;

  final String r_date;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'p_size', value: e.p_size),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(columnName: 'block', value: e.block),
              DataGridCell<int>(columnName: 'd_payment', value: e.d_payment),
              DataGridCell<String>(columnName: 'r_date', value: e.r_date),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Text(e.value.toString(), style: const TextStyle(
          fontFamily: 'Quicksand-Regular',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff2f2e2e),
        ),
        ),
      );
    }).toList());
  }
}
