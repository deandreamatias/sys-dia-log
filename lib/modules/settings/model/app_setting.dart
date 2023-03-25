class AppSetting<T> {
  final String name;

  late T? value;

  final T defaultValue;

  AppSetting(this.name, this.value, this.defaultValue);

  T getOrDefault() {
    return value ?? defaultValue;
  }
}
