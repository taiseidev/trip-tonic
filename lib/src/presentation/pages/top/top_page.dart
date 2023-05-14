import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/url/url_data_source.dart';
import 'package:trip_tonic/src/presentation/pages/auth/sign_in_page.dart';
import 'package:trip_tonic/src/presentation/widgets/primary_modal_bottom_sheet.dart';
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
        builder: (context) => PrimaryModalBottomSheet(
          title: 'Novel Journey',
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
          okText: '同意する',
          ngText: '同意しない',
          onOk: () => context
            ..pop()
            ..push(SignInPage.pagePath),
          onNg: () => context.pop(),
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
                      'Novel Journeyを始める',
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
