import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_tonic/src/presentation/ui/organisms/primary_dialog_organisms.dart';
import 'package:trip_tonic/src/presentation/ui/pages/auth/sign_in_page.dart';
import 'package:url_launcher/url_launcher.dart';

class TopPage extends HookWidget {
  const TopPage({super.key});

  static const pageName = 'top';
  static const pagePath = '/top';

  Future<void> _showModalBottomSheet(BuildContext context) async {
    await showDialog<void>(
      context: context,
      builder: (context) => PrimaryDialogOrganisms(
        titleText: 'Novel Journey利用規約',
        okText: '同意する',
        onOkPressed: () => context
          ..pop()
          ..push(SignInPage.pagePath),
        cancelText: '同意しない',
        onCancelPressed: () => Navigator.pop(context),
        introText: '本アプリを利用するためには、',
        termsOfServiceText: '利用規約',
        conclusionText: 'に同意していただく必要があります。',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ImageAssetAtoms(path: imagePath),
          const Padding(
            padding: EdgeInsets.only(
              top: 80,
              left: 24,
            ),
            child: Text(
              'Novel Journey',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async => _showModalBottomSheet(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    '始める',
                    style: TextStyle(
                      color: Colors.white,
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
    );
  }
}
