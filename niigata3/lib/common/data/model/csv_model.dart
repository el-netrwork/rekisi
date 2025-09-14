import 'package:flutter/material.dart';

@immutable
class CsvModel {
  const CsvModel({
    required this.columnNames,
    required this.rows,
  });
  final List<String> columnNames;
  final List<List<dynamic>> rows;
}
