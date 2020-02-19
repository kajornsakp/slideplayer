import 'package:flutter_slides/models/normalization_multipliers.dart';
import 'package:flutter/material.dart';

class DartExampleContent extends StatelessWidget {
  final NormalizationMultipliers normalizationMultipliers;
  final ValueNotifier<int> _counter = ValueNotifier(0);

  DartExampleContent({Key key, this.normalizationMultipliers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double normWidthMulti = normalizationMultipliers.width;
    double normHeightMulti = normalizationMultipliers.height;
    double fontMulti = normalizationMultipliers.font;
    final double fabSize = 80.0 * normWidthMulti;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter', style: TextStyle(fontSize: 16),),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
