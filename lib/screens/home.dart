import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/providers/nav_provider/index.dart';
import 'package:flutter_template/screens/settings.dart';
import 'package:flutter_template/screens/widgets.dart';
import 'package:forui/forui.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final navState = ref.watch(navNotifierProvider);
    return FScaffold(
      contentPad: false,
      content: PageView(
        controller: navState.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Widgets(),
          const Settings(),
        ],
      ),
      footer: FBottomNavigationBar(
        index: navState.initialIndex,
        onChange: (value) {
          ref.read(navNotifierProvider.notifier).setNavIndex(value);
        },
        items: [
          FBottomNavigationBarItem(
            icon: FAssets.icons.drama,
            label: 'Home',
          ),
          FBottomNavigationBarItem(
            icon: FAssets.icons.settings,
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
