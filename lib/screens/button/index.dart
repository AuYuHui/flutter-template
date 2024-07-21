import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forui/forui.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('Button'),
        leftActions: [
          FHeaderAction(
            icon: FAssets.icons.arrowLeft,
            onPress: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      contentPad: false,
      content: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Basic usage",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FButton(
                  label: const Text('Button'),
                  onPress: () {},
                ),
                FButton(
                  label: const Text('Button'),
                  style: FButtonStyle.secondary,
                  onPress: () {},
                ),
                FButton(
                  label: const Text('Button'),
                  style: FButtonStyle.outline,
                  onPress: () {},
                ),
                FButton(
                  label: const Text('Button'),
                  style: FButtonStyle.destructive,
                  onPress: () {},
                )
              ],
            ),
            SizedBox(height: 16.h),
            Text("Icon Button",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FButton(
                  prefix: FButtonIcon(icon: FAssets.icons.mail),
                  label: const Text('Button'),
                  onPress: () {},
                ),
                FButton(
                  suffix: FButtonIcon(icon: FAssets.icons.apple),
                  label: const Text('Button'),
                  onPress: () {},
                ),
                FButton(
                  prefix: FButtonIcon(icon: FAssets.icons.mail),
                  suffix: FButtonIcon(icon: FAssets.icons.apple),
                  label: const Text('Button'),
                  onPress: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
