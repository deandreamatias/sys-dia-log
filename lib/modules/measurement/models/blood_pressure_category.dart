enum BloodPressureCategory {
  low("LOW"),
  normal("NORMAL"),
  elevated("ELEVATED"),
  hypertensionStage1("HYPERTENSION_STAGE_1"),
  hypertensionStage2("HYPERTENSION_STAGE_2"),
  hypertensionCrisis("HYPERTENSION_CRISIS");

  final String jsonValue;

  const BloodPressureCategory(this.jsonValue);
}
