class SettingState {
  final bool isDarkMode;

  SettingState({
    this.isDarkMode = false,
  });

  SettingState copyWith({
    bool? isDarkMode,
  }) {
    return SettingState(
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
