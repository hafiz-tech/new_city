import '../../constants/image_upload_field.dart';
import '../../utils/app_layout.dart';
import '../../utils/dependencies.dart';
import '../../widgets/elevated_button.dart';

class AddNewCustomerForm extends StatefulWidget {
  @override
  _AddNewCustomerFormState createState() => _AddNewCustomerFormState();
}

class _AddNewCustomerFormState extends State<AddNewCustomerForm> {
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
              'Add New Customer',
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
                      labelText: 'Customer Name',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter customer name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Father Name', border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter father name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(labelText: 'CNIC No.', border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter CNIC Nunmber';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _ageController,
                    decoration: const InputDecoration(labelText: 'Contact Number', border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Contact Number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  PictureUploadForm(),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _salaryController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Address', border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                      width: 100,
                      height: 50,
                      backgroundColor: Colors.blue,
                      text: 'Add New',
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