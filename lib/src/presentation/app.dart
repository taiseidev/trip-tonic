import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/color_schemes.g.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/core/utils/scaffold_messenger_key.dart';
import 'package:trip_tonic/src/presentation/router/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'TRIP TONIC',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      routerConfig: ref.watch(routerProvider),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) {
        final isLoading = ref.watch(loadingProvider);
        return Stack(
          children: [
            MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
              child: child!,
            ),
            if (isLoading) const Loading(),
          ],
        );
      },
    );
  }
}
