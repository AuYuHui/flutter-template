import 'package:flutter/material.dart';
import 'package:flutter_template/providers/nav_provider/nav_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'index.g.dart';

@riverpod
class NavNotifier extends _$NavNotifier {
  @override
  NavState build() {
    final pageController = PageController();

    ref.onDispose(() {
      pageController.dispose();
    });

    return NavState(
      pageController: pageController,
      initialIndex: 0,
    );
  }

  void setNavIndex(int index) {
    state = state.copyWith(initialIndex: index);
    state.setNavIndex(index);
  }
}
