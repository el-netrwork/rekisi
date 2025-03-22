// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'convert_csv_to_json_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$convertCsvToJsonUseCaseHash() =>
    r'16f48b26864757af0f168ff3b2ff841202059f52';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [convertCsvToJsonUseCase].
@ProviderFor(convertCsvToJsonUseCase)
const convertCsvToJsonUseCaseProvider = ConvertCsvToJsonUseCaseFamily();

/// See also [convertCsvToJsonUseCase].
class ConvertCsvToJsonUseCaseFamily
    extends Family<List<Map<String, dynamic>>?> {
  /// See also [convertCsvToJsonUseCase].
  const ConvertCsvToJsonUseCaseFamily();

  /// See also [convertCsvToJsonUseCase].
  ConvertCsvToJsonUseCaseProvider call({
    required CsvModel csv,
  }) {
    return ConvertCsvToJsonUseCaseProvider(
      csv: csv,
    );
  }

  @override
  ConvertCsvToJsonUseCaseProvider getProviderOverride(
    covariant ConvertCsvToJsonUseCaseProvider provider,
  ) {
    return call(
      csv: provider.csv,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'convertCsvToJsonUseCaseProvider';
}

/// See also [convertCsvToJsonUseCase].
class ConvertCsvToJsonUseCaseProvider
    extends AutoDisposeProvider<List<Map<String, dynamic>>?> {
  /// See also [convertCsvToJsonUseCase].
  ConvertCsvToJsonUseCaseProvider({
    required CsvModel csv,
  }) : this._internal(
          (ref) => convertCsvToJsonUseCase(
            ref as ConvertCsvToJsonUseCaseRef,
            csv: csv,
          ),
          from: convertCsvToJsonUseCaseProvider,
          name: r'convertCsvToJsonUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$convertCsvToJsonUseCaseHash,
          dependencies: ConvertCsvToJsonUseCaseFamily._dependencies,
          allTransitiveDependencies:
              ConvertCsvToJsonUseCaseFamily._allTransitiveDependencies,
          csv: csv,
        );

  ConvertCsvToJsonUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.csv,
  }) : super.internal();

  final CsvModel csv;

  @override
  Override overrideWith(
    List<Map<String, dynamic>>? Function(ConvertCsvToJsonUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConvertCsvToJsonUseCaseProvider._internal(
        (ref) => create(ref as ConvertCsvToJsonUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        csv: csv,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Map<String, dynamic>>?> createElement() {
    return _ConvertCsvToJsonUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConvertCsvToJsonUseCaseProvider && other.csv == csv;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, csv.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConvertCsvToJsonUseCaseRef
    on AutoDisposeProviderRef<List<Map<String, dynamic>>?> {
  /// The parameter `csv` of this provider.
  CsvModel get csv;
}

class _ConvertCsvToJsonUseCaseProviderElement
    extends AutoDisposeProviderElement<List<Map<String, dynamic>>?>
    with ConvertCsvToJsonUseCaseRef {
  _ConvertCsvToJsonUseCaseProviderElement(super.provider);

  @override
  CsvModel get csv => (origin as ConvertCsvToJsonUseCaseProvider).csv;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
