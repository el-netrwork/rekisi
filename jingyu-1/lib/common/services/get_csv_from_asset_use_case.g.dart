// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_csv_from_asset_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCsvFromAssetUseCaseHash() =>
    r'721ff71970909d2e105dc4d60843efdcf44ce4f1';

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

/// See also [getCsvFromAssetUseCase].
@ProviderFor(getCsvFromAssetUseCase)
const getCsvFromAssetUseCaseProvider = GetCsvFromAssetUseCaseFamily();

/// See also [getCsvFromAssetUseCase].
class GetCsvFromAssetUseCaseFamily extends Family<AsyncValue<CsvModel?>> {
  /// See also [getCsvFromAssetUseCase].
  const GetCsvFromAssetUseCaseFamily();

  /// See also [getCsvFromAssetUseCase].
  GetCsvFromAssetUseCaseProvider call({
    required String url,
  }) {
    return GetCsvFromAssetUseCaseProvider(
      url: url,
    );
  }

  @override
  GetCsvFromAssetUseCaseProvider getProviderOverride(
    covariant GetCsvFromAssetUseCaseProvider provider,
  ) {
    return call(
      url: provider.url,
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
  String? get name => r'getCsvFromAssetUseCaseProvider';
}

/// See also [getCsvFromAssetUseCase].
class GetCsvFromAssetUseCaseProvider
    extends AutoDisposeFutureProvider<CsvModel?> {
  /// See also [getCsvFromAssetUseCase].
  GetCsvFromAssetUseCaseProvider({
    required String url,
  }) : this._internal(
          (ref) => getCsvFromAssetUseCase(
            ref as GetCsvFromAssetUseCaseRef,
            url: url,
          ),
          from: getCsvFromAssetUseCaseProvider,
          name: r'getCsvFromAssetUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCsvFromAssetUseCaseHash,
          dependencies: GetCsvFromAssetUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetCsvFromAssetUseCaseFamily._allTransitiveDependencies,
          url: url,
        );

  GetCsvFromAssetUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Override overrideWith(
    FutureOr<CsvModel?> Function(GetCsvFromAssetUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCsvFromAssetUseCaseProvider._internal(
        (ref) => create(ref as GetCsvFromAssetUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CsvModel?> createElement() {
    return _GetCsvFromAssetUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCsvFromAssetUseCaseProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCsvFromAssetUseCaseRef on AutoDisposeFutureProviderRef<CsvModel?> {
  /// The parameter `url` of this provider.
  String get url;
}

class _GetCsvFromAssetUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<CsvModel?>
    with GetCsvFromAssetUseCaseRef {
  _GetCsvFromAssetUseCaseProviderElement(super.provider);

  @override
  String get url => (origin as GetCsvFromAssetUseCaseProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
