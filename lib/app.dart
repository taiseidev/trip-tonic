import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
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
      builder: (context, child) => Consumer(
        builder: (context, ref, _) {
          final isLoading = ref.watch(loadingProvider);
          return Stack(
            children: [
              child!,
              // ローディングを表示する
              if (isLoading)
                ColoredBox(
                  color: Colors.black26,
                  child: Center(
                    child: LoadingAnimationWidget.fourRotatingDots(
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
      home: const HomePage(),
    );
  }
}
