import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/extensions/ref_extension.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/presentation/main/main_page.dart';
import 'package:trip_tonic/src/usecase/auth/sign_in_anonymously.dart.dart';
import 'package:trip_tonic/src/usecase/auth/sign_in_google.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

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
              ElevatedButton(
                onPressed: () => ref.read(signInAnonymouslyProvider)(),
                child: const Text('登録せずに始める'),
              ),
              ElevatedButton(
                onPressed: () => ref.read(signInGoogleProvider)(),
                child: const Text('Googleで登録'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Appleで登録'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
