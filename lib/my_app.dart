import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/providers/setting_provider/index.dart';
import 'package:flutter_template/router/app_router.dart';
import 'package:forui/forui.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingState = ref.watch(settingNotifierProvider);
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Template',
          builder: (context, child) {
            return FTheme(
                data: settingState.isDarkMode
                    ? FThemes.zinc.dark
                    : FThemes.zinc.light,
                child: child!);
          },
          routerConfig: AppRouterConfig.instance.getGoRouter,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
