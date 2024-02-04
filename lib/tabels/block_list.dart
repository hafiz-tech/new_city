import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../utils/app_layout.dart';
import '../utils/dependencies.dart';


class BlockList extends StatefulWidget {
  BlockList({Key? key}) : super(key: key);

  @override
  _BlockListState createState() => _BlockListState();
}

class _BlockListState extends State<BlockList> {
  List<NewPhases> newPhases = <NewPhases>[];
  late PhasesDataSource phasesDataSource;
  var homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    newPhases = getEmployeeData();
    phasesDataSource = PhasesDataSource(employeeData: newPhases);
  }

  final TextEditingController _searchController = TextEditingController();
  String _searchText = '';
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                homeController.changeIndex(4);
              },
              child: Container(
                width: 100,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue
                ),
                child: const Center(
                  child: Text(
                    'Add New',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        fontFamily: 'Quicksand-Regular',
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      hintText: 'Enter your search query',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchText = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SfDataGrid(
              source: phasesDataSource,
              columnWidthMode: ColumnWidthMode.fill,
              allowSorting: true,
              allowMultiColumnSorting: true,
              sortingGestureType: SortingGestureType.tap,
              rowsPerPage: 0,
              columns: <GridColumn>[
                GridColumn(
                  columnName: 'serNo',
                  label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Sr. No' , style:
                    TextStyle(
                      fontFamily: 'Quicksand-SemiBold',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),),
                  ),
                ),
                GridColumn(
                  columnName: 'name',
                  label: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('Phase Name', style:
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
                    columnName: 'b_name',
                    label: Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Block Name',style:
                        TextStyle(
                          fontFamily: 'Quicksand-SemiBold',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        ))),
                GridColumn(
                    columnName: 't_plot',
                    label: Container(
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Total Plot', style:
                        TextStyle(
                          fontFamily: 'Quicksand-SemiBold',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                          //overflow: TextOverflow.ellipsis,
                        ))),
              ],
            ),
            SfDataPager(pageCount: 5, delegate: DataPagerDelegate()),
          ],
        ),
      ),
    );
  }

  List<NewPhases> getEmployeeData() {
    return [
      NewPhases(1, 'New City Phase 1', 'Block A', 50),
      NewPhases(2, 'New City Phase 1', 'Block B', 40),
      NewPhases(3, 'New City Phase 1', 'Block C', 30),
      /*NewPhases('Michael', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      NewPhases('Martin', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      NewPhases('Newberry', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      NewPhases('Balnc', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      NewPhases('Perry', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      NewPhases('Gable', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),
      NewPhases('Grimes', '5 Marla', 'Gold', 15000, 'Dec 29, 2023'),*/
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class NewPhases {
  NewPhases(this.serNo, this.name, this.b_name,  this.t_plot);
  final int serNo;
  final String name;
  final String b_name;
  final int t_plot;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class PhasesDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  PhasesDataSource({required List<NewPhases> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'serNo', value: e.serNo),
      DataGridCell<String>(columnName: 'name', value: e.name),
      DataGridCell<String>(columnName: 'b_name', value: e.b_name),
      DataGridCell<int>(columnName: 't_plot', value: e.t_plot),
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


