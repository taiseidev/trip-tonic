import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/extensions/ref_extension.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/presentation/main/main_page.dart';
import 'package:trip_tonic/src/usecase/auth/create_user.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  static const pageName = 'signUp';
  static const pagePath = '/signUp';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.handleAsyncValue<void>(
      loginStateProvider,
      completeMessage: 'ユーザ登録が完了しました！',
      complete: (context, _) async => context.go(MainPage.pagePath),
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('テスト'),
              ElevatedButton(
                onPressed: () => ref.read(createUserProvider)(),
                child: const Text('登録せずに始める'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
