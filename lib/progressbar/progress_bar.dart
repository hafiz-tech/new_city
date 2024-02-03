import 'package:wave_linear_progress_indicator/wave_linear_progress_indicator.dart';
import '../utils/dependencies.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);


  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  final double _progress = 0.6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WaveLinearProgressIndicator(
            value: _progress,
            minHeight:12,
          ),
        ],
      ),
    );
  }
}

  /*Stream<double> _getDownloadProgress() async* {
    final values = <double>[
      0,
      0.1,
      0.2,
      0.3,
      0.4,
      0.45,
      0.7,
      0.85,
      0.9,
      0.95,
      0.99,
      1.0
    ];
    for (final p in values) {
      yield p;
      await Future.delayed(const Duration(milliseconds: 1800));
    }
  }*/

  /*void _increase() {
    final delta = Random().nextDouble();
    double newValue = 0;
    newValue = newValue.clamp(0, 1);
    setState(() {
      _progress = 0;
    });
  }

  void _decrease() {
    final delta = Random().nextDouble();
    double newValue = 0;
    newValue = newValue.clamp(0, 1);
    setState(() {
      _progress = 0;
    });
  }
}*/