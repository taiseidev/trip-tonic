import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:trip_tonic/color_schemes.g.dart';
import 'package:trip_tonic/extensions/ref_extension.dart';
import 'package:trip_tonic/utils/loading.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

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
      home: const MyAppa(),
    );
  }
}

class MyAppa extends ConsumerWidget {
  const MyAppa({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.handleAsyncValue<void>(
      loginStateProvider,
      completeMessage: '完了しました🚀',
      complete: (context, _) async {
        // ログインできたらホーム画面に遷移する
        print('完了しました🚀');
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async => ref.read(userServiceProvider).login(),
          child: const Text('ログイン'),
        ),
      ),
    );
  }
}

/// ログイン処理状態
final loginStateProvider = StateProvider<AsyncValue<void>>(
  (_) => const AsyncValue.data(null),
);

/// ユーザーサービスプロバイダー
final userServiceProvider = Provider(
  UserService.new,
);

class UserService {
  UserService(this.ref);

  final Ref ref;

  /// ログインする
  Future<void> login() async {
    final notifier = ref.read(loginStateProvider.notifier);

    // ログイン結果をローディング中にする
    notifier.state = const AsyncValue.loading();

    // ログイン処理を実行する
    notifier.state = await AsyncValue.guard(() async {
      // ここで実際にログイン処理を非同期で行う
      await Future<void>.delayed(const Duration(seconds: 3));
    });
  }
}

/// スナックバー表示用のGlobalKey
final scaffoldMessengerKeyProvider = Provider(
  (_) => GlobalKey<ScaffoldMessengerState>(),
);

/// ダイアログ表示用のGlobalKey
final navigatorKeyProvider = Provider(
  (_) => GlobalKey<NavigatorState>(),
);
