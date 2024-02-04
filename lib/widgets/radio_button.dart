import '../utils/dependencies.dart';

class PlotTypeRadioButton extends StatefulWidget {
  @override
  _PlotTypeRadioButtonState createState() => _PlotTypeRadioButtonState();
}

class _PlotTypeRadioButtonState extends State<PlotTypeRadioButton> {
  String selectedOption = 'Residential';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Plot Type:',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Quicksand-Regular',
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 50),
        Radio(
          value: 'Residential',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
        ),
        const Text('Residential', style: TextStyle(
          fontSize: 16,
          fontFamily: 'Quicksand-Regular',
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),),
        const SizedBox(width: 20),
        Radio(
          value: 'Commercial',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
        ),
        const Text('Commercial', style: TextStyle(
          fontSize: 16,
          fontFamily: 'Quicksand-Regular',
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),),
      ],
    );
  }
}