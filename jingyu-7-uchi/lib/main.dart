import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/app.dart';
import 'package:stamp_rally/app/setup/flavor.dart';
import 'package:stamp_rally/app/setup/setup_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  final providerContainer = ProviderContainer();

  final flavor = Flavor.getFromString(const String.fromEnvironment('flavor'));
  const url = String.fromEnvironment('supabaseUrl');
  const anonKey = String.fromEnvironment('anonKey');

  await Supabase.initialize(url: url, anonKey: anonKey);

  await setupApp(flavor: flavor, providerContainer: providerContainer);
  await App.startApp(providerContainer: providerContainer);
}
