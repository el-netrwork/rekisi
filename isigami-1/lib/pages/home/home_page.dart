import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/assets/localization/strings.g.dart';

import '../../common/services/location_service.dart';
import 'home_state.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeStateNotifierProvider);
    useEffect(() {
      Future.delayed(
        Duration.zero,
        () async {
          await ref.read(locationServiceProvider).requestPermission();
          ref.read(homeStateNotifierProvider.notifier).setIsLocationAllow(await ref.read(locationServiceProvider).isPermissionAllow);
        },
      );
      return null;
    });
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: state.pageIndex,
        onDestinationSelected: (i) => ref.read(homeStateNotifierProvider.notifier).setPageIndex(i),
        destinations: [
          NavigationDestination(icon: const Icon(Icons.temple_buddhist), label: t.navigationBar.top),
          NavigationDestination(icon: const Icon(Icons.map_sharp), label: t.navigationBar.map),
          NavigationDestination(icon: const Icon(Icons.camera_alt), label: t.navigationBar.camera),
          NavigationDestination(icon: const Icon(Icons.history_rounded), label: t.navigationBar.history),
        ],
      ),
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: state.child.content,
        ),
      ),
    );
  }
}
