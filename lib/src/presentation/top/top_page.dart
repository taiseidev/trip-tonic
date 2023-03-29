import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_tonic/src/presentation/auth/sign_in_page.dart';
import 'package:url_launcher/url_launcher.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  static const pageName = 'top';
  static const pagePath = '/top';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('ここにロゴを表示する'),
              ElevatedButton(
                onPressed: () async {
                  await _showModalBottomSheet(context);
                },
                child: const Text('始める'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _showModalBottomSheet(BuildContext context) async {
  await showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('Trip Tonic利用規約'),
        content: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              const TextSpan(
                text: '本アプリを利用するためには、',
              ),
              TextSpan(
                text: '利用規約',
                style: const TextStyle(
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    if (!await launchUrl(
                      Uri.parse(
                        'https://ionian-earthworm-71d.notion.site/c8a57ccbf6404632833825204a503763',
                      ),
                    )) {
                      throw Exception('Could not launch');
                    }
                  },
              ),
              const TextSpan(
                text: 'に同意していただく必要があります。',
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('同意しない'),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            onPressed: () => context
              ..pop()
              ..push(SignInPage.pagePath),
            child: const Text('同意する'),
          )
        ],
      );
    },
  );
}
