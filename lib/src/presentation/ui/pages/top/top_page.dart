import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/url/url_data_source.dart';
import 'package:trip_tonic/src/presentation/ui/pages/auth/sign_in_page.dart';
import 'package:trip_tonic/src/usecase/fetch_url_use_case.dart';
import 'package:url_launcher/url_launcher.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({super.key});

  static const pageName = 'top';
  static const pagePath = '/top';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // URLを取得・表示する
    Future<void> openUrl(UrlType type) async {
      final url = await ref.read(fetchUrlUseCaseProvider).call(type: type);
      if (!await launchUrl(Uri.parse(url))) {
        throw Exception('Could not launch');
      }
    }

    Future<void> showModalBottomSheet() async {
      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: const Text(
            'Novel Journey',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                const TextSpan(text: '本アプリを利用するためには、'),
                TextSpan(
                  text: '利用規約',
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async => openUrl(
                          UrlType.termsOfService,
                        ),
                ),
                const TextSpan(text: 'と'),
                TextSpan(
                  text: 'プライバシーポリシー',
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async => openUrl(UrlType.privacyPolicy),
                ),
                const TextSpan(text: 'に同意していただく必要があります。'),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => context.pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: const StadiumBorder(),
              ),
              child: const Text(
                '同意しない',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => context
                ..pop()
                ..push(SignInPage.pagePath),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
              ),
              child: const Text(
                '同意する',
                style: TextStyle(
                  color: Color(0xffe5a323),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            const Align(
              child: Text(
                'アニメーション付きのイラストを挿入する',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 80,
                left: 24,
              ),
              child: Text(
                'Novel Journey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async => showModalBottomSheet(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffe5a323),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      '始める',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
