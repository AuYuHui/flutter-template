import 'package:flutter/material.dart';

class NavState {
  final PageController pageController;
  int initialIndex;

  NavState({required this.pageController, required this.initialIndex});

  void setNavIndex(int index) {
    initialIndex = index;
    pageController.jumpToPage(index);
  }

  NavState copyWith({PageController? pageController, int? initialIndex}) {
    return NavState(
      pageController: pageController ?? this.pageController,
      initialIndex: initialIndex ?? this.initialIndex,
    );
  }
}
