import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forui/forui.dart';

class Widgets extends StatelessWidget {
  Widgets({super.key});

  final List<String> _widgets = [
    "Alert",
    "Badge",
    "Bottom Navigation Bar",
    "Button",
    "Calendar",
    "Card",
    "Checkbox",
    "Dialog",
    "Header",
    "Progress",
    "Scaffold",
    "Separator",
    "Switch",
    "Tabs",
    "Text Field",
  ];

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: const FHeader(
        title: Text('Widgets'),
      ),
      contentPad: false,
      content: ListView.builder(
        itemCount: _widgets.length,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        itemBuilder: (ctx, index) => Padding(
          padding: EdgeInsets.only(
            bottom: 8.h,
          ),
          child: FCard(
            title: Text(_widgets[index]),
          ),
        ),
      ),
    );
  }
}
