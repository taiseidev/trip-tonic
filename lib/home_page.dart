import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/extensions/ref_extension.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static const pageName = 'home';
  static const pagePath = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.handleAsyncValue<void>(
      loginStateProvider,
      completeMessage: '🚀ログイン完了🚀',
      complete: (context, _) async {
        // ログインできたらホーム画面に遷移する
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

  Future<void> login() async {
    ref.read(loginStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(() async {
        await Future<void>.delayed(const Duration(seconds: 3));
      });
  }
}
