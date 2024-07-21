import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/providers/setting_provider/index.dart';
import 'package:forui/forui.dart';

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FScaffold(
      header: const FHeader(
        title: Text('Settings'),
      ),
      contentPad: false,
      content: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            FCard(
                child: Row(
              children: [
                const Text("Dark Mode"),
                const Spacer(),
                FSwitch(
                  initialValue: true,
                  onChange: (value) {
                    ref.read(settingNotifierProvider.notifier).toggleDarkMode();
                  },
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
