import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/extensions/ref_extension.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/gen/assets.gen.dart';
import 'package:trip_tonic/src/presentation/ui/pages/timeline/timeline_page.dart';
import 'package:trip_tonic/src/presentation/ui/templates/auth/sign_in_page_template.dart';
import 'package:trip_tonic/src/usecase/auth/sign_in_anonymously.dart';
import 'package:trip_tonic/src/usecase/auth/sign_in_apple.dart';
import 'package:trip_tonic/src/usecase/auth/sign_in_google.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  static const pageName = 'signIn';
  static const pagePath = '/signIn';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.handleAsyncValue<void>(
      loadingStateProvider,
      completeMessage: 'ユーザ登録が完了しました！',
      complete: (context, _) async => context.go(TimeLinePage.pagePath),
    );

    return Scaffold(
      body: SignInPageTemplate(
        anonymouslyText: '登録せずに始める',
        googleText: 'Googleで登録',
        appleText: 'Appleで登録',
        imagePath: Assets.images.building.path,
        onPressedAnonymously: () => ref.read(signInAnonymouslyProvider)(),
        onPressedGoogle: () => ref.read(signInGoogleProvider)(),
        onPressedApple: () => ref.read(signInAppleProvider)(),
      ),
    );
  }
}
