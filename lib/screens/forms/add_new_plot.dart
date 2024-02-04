import '../../utils/app_layout.dart';
import '../../utils/dependencies.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/radio_button.dart';

class AddNewPlotForm extends StatefulWidget {
  @override
  _AddNewPlotFormState createState() => _AddNewPlotFormState();
}

class _AddNewPlotFormState extends State<AddNewPlotForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _salaryController = TextEditingController();

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
            const Text(
              'Add New Plot',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand-SemiBold',
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Phase Name',
                      border: OutlineInputBorder(),
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
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Block Name', border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Block Name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  PlotTypeRadioButton(),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _phoneController,
                    decoration: const InputDecoration(labelText: 'Plot Number', border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter plot number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _ageController,
                    decoration: const InputDecoration(labelText: 'Plot Size', border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter plot size';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _salaryController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Description', border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Description';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
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
                        if (_formKey.currentState!.validate()) {
                          // Form is valid, perform actions here
                          print('Form submitted successfully');
                          print('Name: ${_nameController.text}');
                          print('Email: ${_emailController.text}');
                          print('Phone: ${_phoneController.text}');
                          print('Age: ${_ageController.text}');
                          print('Salary: ${_salaryController.text}');
                        }
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}