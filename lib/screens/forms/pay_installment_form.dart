import '../../utils/app_layout.dart';
import '../../utils/dependencies.dart';
import '../../widgets/elevated_button.dart';

class PayPlotInstallment extends StatefulWidget {
  @override
  _PayPlotInstallmentState createState() => _PayPlotInstallmentState();
}

class _PayPlotInstallmentState extends State<PayPlotInstallment> {
  String? dropdownValue1;
  String? dropdownValue2;
  String? dropdownValue3;
  String? dropdownValue4;

  List<String> items = ['New City Phase 1', 'New City Phase 2', 'New City Phase 3'];
  List<String> items1 = ['Block A', 'Block B', 'Block C'];
  List<String> items2 = ['AA Residential 5 Marla', 'AA Residential 10 Marla', 'AA Cemmercial 5 Marla'];
  List<String> items3 = ['5465454654 Ali', '5465454654 Ali', '5465454654 Ali'];


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
          children: <Widget>[
            const Text(
              'Pay Installment',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand-SemiBold',
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            DropdownButtonFormField<String>(
              value: dropdownValue1,
              icon: const Icon(Icons.arrow_drop_down),
              decoration: const InputDecoration(labelText: 'Phase Name'),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue1 = newValue!;
                });
              },
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: dropdownValue2,
              icon: const Icon(Icons.arrow_drop_down),
              decoration: const InputDecoration(labelText: 'Block Name'),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue2 = newValue!;
                });
              },
              items: items1.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: dropdownValue3,
              icon: const Icon(Icons.arrow_drop_down),
              decoration: const InputDecoration(labelText: 'Plot No.'),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue3 = newValue!;
                });
              },
              items: items2.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              value: dropdownValue4,
              icon: const Icon(Icons.arrow_drop_down),
              decoration: const InputDecoration(labelText: 'Select Customer'),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue4 = newValue!;
                });
              },
              items: items3.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20.0),
            Form(
              //key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    //controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Due Amount',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter phase name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                   // controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Pay Amount', ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Block Name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                   // controller: _phoneController,
                    decoration: const InputDecoration(labelText: 'Receipt No.',),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Description';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: CustomElevatedButton(
                  width: 100,
                  height: 50,
                  backgroundColor: Colors.blue,
                  text: 'Submit',
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Quicksand-SemiBold',
                      fontWeight: FontWeight.w500
                  ),
                  onPressed: (){
                    print('Dropdown 1: $dropdownValue1');
                    print('Dropdown 2: $dropdownValue2');
                    print('Dropdown 3: $dropdownValue3');
                    print('Dropdown 4: $dropdownValue4');
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}