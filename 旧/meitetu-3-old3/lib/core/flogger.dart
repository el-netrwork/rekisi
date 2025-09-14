import 'package:logger/logger.dart';
import 'package:stamp_rally/app/setup/flavor.dart';

class Flogger {
  static late final Logger? _logger;

  static void init(Flavor flavor) {
    if (flavor != Flavor.production) {
      Logger.level = Level.trace;
      _logger = Logger();
    } else {
      _logger = null;
    }
  }

  static void v(dynamic message, {Object? error, StackTrace? stackTrace, DateTime? time}) {
    _logger?.t(message, error: error, stackTrace: stackTrace, time: time);
  }

  static void d(dynamic message, {Object? error, StackTrace? stackTrace, DateTime? time}) {
    _logger?.d(message, error: error, stackTrace: stackTrace, time: time);
  }

  static void i(dynamic message, {Object? error, StackTrace? stackTrace, DateTime? time}) {
    _logger?.i(message, error: error, stackTrace: stackTrace, time: time);
  }

  static void w(dynamic message, {Object? error, StackTrace? stackTrace, DateTime? time}) {
    _logger?.w(message, error: error, stackTrace: stackTrace, time: time);
  }

  static void e(dynamic message, {Object? error, StackTrace? stackTrace, DateTime? time}) {
    _logger?.e(message, error: error, stackTrace: stackTrace, time: time);
  }
}
