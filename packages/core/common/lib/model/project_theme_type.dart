enum ProjectThemeType {
  system(0),
  light(1),
  dark(2);

  final int value;

  const ProjectThemeType(this.value);

  static ProjectThemeType fromValue(int? value) {
    return ProjectThemeType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => ProjectThemeType.system,
    );
  }
}
