import 'package:flutter_template/providers/setting_provider/setting_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'index.g.dart';

@riverpod
class SettingNotifier extends _$SettingNotifier {
  @override
  SettingState build() {
    return SettingState(isDarkMode: false);
  }

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
}
