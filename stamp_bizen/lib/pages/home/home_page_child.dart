import 'package:flutter/material.dart';

import '../code_scanner/code_scanner_page_content.dart';
import '../history/history_page_content.dart';
import '../map/map_page_content.dart';
import '../top/top_page_content.dart';

enum HomePageChild {
  top,
  map,
  codeScanner,
  history;

  Widget get content => switch (this) {
        HomePageChild.top => const TopPageContent(),
        HomePageChild.map => const MapPageContent(),
        HomePageChild.codeScanner => const CodeScannerPageContent(),
        HomePageChild.history => const HistoryPageContent(),
      };
}
