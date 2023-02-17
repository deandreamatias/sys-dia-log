import 'package:flutter/material.dart';

class ListData {
  final int systolicValue;
  final int diastolicValue;
  final String categoryNameKey;
  final Color categoryColorValue;
  final int pulseBpmValue;
  final DateTime createdAt;

  ListData(
    this.systolicValue,
    this.diastolicValue,
    this.categoryNameKey,
    this.categoryColorValue,
    this.pulseBpmValue,
    this.createdAt,
  );
}
