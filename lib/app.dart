import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/color_schemes.g.dart';
import 'package:trip_tonic/home_page.dart';
import 'package:trip_tonic/utils/global_key.dart';
import 'package:trip_tonic/utils/loading.dart';
import 'package:trip_tonic/utils/scaffold_messenger_key.dart';

class TripTonic extends ConsumerWidget {
  const TripTonic({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      navigatorKey: ref.watch(navigatorKeyProvider),
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      builder: (context, child) {
        final isLoading = ref.watch(loadingProvider);
        return Stack(
          children: [
            child!,
            if (isLoading) const Loading(),
          ],
        );
      },
      home: const HomePage(),
    );
  }
}
