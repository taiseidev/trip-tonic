import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/color_schemes.g.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/core/utils/scaffold_messenger_key.dart';
import 'package:trip_tonic/src/presentation/hooks/user_effect_once.dart';
import 'package:trip_tonic/src/presentation/router/router.dart';
import 'package:trip_tonic/src/usecase/app_user/app_user_provider.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  static const borderStyle = BorderSide(width: 2);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffectOnce(() {
      // ログインユーザ情報を取得
      Future(() => ref.read(appUserNotifierProvider.future));
      return null;
    });
    return MaterialApp.router(
      title: 'TRIP TONIC',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          border: UnderlineInputBorder(
            borderSide: borderStyle,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: borderStyle,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: borderStyle,
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: borderStyle,
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: borderStyle,
          ),
        ),
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
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
