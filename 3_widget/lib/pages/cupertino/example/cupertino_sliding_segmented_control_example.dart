import 'package:flutter/cupertino.dart';

class CupertinoSlidingSegmentedControlExample extends StatefulWidget {
  const CupertinoSlidingSegmentedControlExample({super.key});

  @override
  State<CupertinoSlidingSegmentedControlExample> createState() =>
      _CupertinoSlidingSegmentedControlExampleState();
}

class _CupertinoSlidingSegmentedControlExampleState extends State<CupertinoSlidingSegmentedControlExample> {
  SkyColor _selectedSegment = SkyColor.midnight;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: mySkyColors[_selectedSegment],
      navigationBar: CupertinoNavigationBar(
        // This Cupertino segmented control has the enum "Sky" as the type.
        middle: CupertinoSlidingSegmentedControl<SkyColor>(
          backgroundColor: CupertinoColors.systemGrey2,
          thumbColor: mySkyColors[_selectedSegment]!,
          // This represents the currently selected segmented control.
          groupValue: _selectedSegment,
          // Callback that sets the selected segmented control.
          onValueChanged: (SkyColor? value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;
              });
            }
          },
          children: const <SkyColor, Widget>{
            SkyColor.midnight: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Midnight',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
            SkyColor.viridian: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Viridian',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
            SkyColor.cerulean: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Cerulean',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
          },
        ),
      ),
      child: Center(
        child: Text(
          'Selected Segment: ${_selectedSegment.name}',
          style: const TextStyle(color: CupertinoColors.white),
        ),
      ),
    );
  }
}

enum SkyColor { midnight, viridian, cerulean }

Map<SkyColor, Color> mySkyColors = <SkyColor, Color>{
  SkyColor.midnight: const Color(0xff191970),
  SkyColor.viridian: const Color(0xff40826d),
  SkyColor.cerulean: const Color(0xff007ba7),
};