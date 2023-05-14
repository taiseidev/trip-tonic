import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/url/url_data_source.dart';
import 'package:trip_tonic/src/presentation/pages/news/news_page.dart';
import 'package:trip_tonic/src/presentation/pages/setting/setting_notifier.dart';
import 'package:trip_tonic/src/usecase/app_user/app_user_provider.dart';
import 'package:trip_tonic/src/usecase/app_user/update_is_push_news_state.dart';
import 'package:trip_tonic/src/usecase/auth/sign_out_use_case.dart';
import 'package:trip_tonic/src/usecase/fetch_url_use_case.dart';
import 'package:url_launcher/url_launcher.dart';

///設定画面
class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  static const pageName = 'setting';
  static const pagePath = '/setting';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setting = ref.watch(settingNotifierProvider).asData?.value;
    final appUser = ref.watch(appUserNotifierProvider).asData?.value;

    if (setting == null || appUser == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // お知らせに関するローカルステート
    final pushNotificationEnabled = useState(appUser.pushNotificationEnabled);
    final pushAnnouncementEnabled = useState(appUser.pushAnnouncementEnabled);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '設定',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 40,
              left: 24,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '通知設定',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 24,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '＊ 通知を受け取るかの設定ができます。',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
            title: const Text(
              'アプリ内のお知らせ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: Switch(
              value: pushNotificationEnabled.value,
              onChanged: (value) async {
                await ref.read(updateIsPushNewsStateUseCaseProvider)(
                  type: NewsType.notice,
                  state: value,
                );
                pushNotificationEnabled.value = value;
              },
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.newspaper_outlined,
              color: Colors.black,
            ),
            title: const Text(
              '運営からのお知らせ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: Switch(
              value: pushAnnouncementEnabled.value,
              onChanged: (value) async {
                await ref.read(updateIsPushNewsStateUseCaseProvider)(
                  type: NewsType.news,
                  state: value,
                );
                pushAnnouncementEnabled.value = value;
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 40,
              left: 24,
              bottom: 8,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'アプリ情報',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.assignment_outlined,
              color: Colors.black,
            ),
            title: const Text(
              '利用規約',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () async {
              final url = await ref.read(fetchUrlUseCaseProvider)(
                type: UrlType.termsOfService,
              );
              await launchUrl(
                Uri.parse(url),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.privacy_tip_outlined,
              color: Colors.black,
            ),
            title: const Text(
              'プライバシーポリシー',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () async {
              final url = await ref.read(fetchUrlUseCaseProvider)(
                type: UrlType.privacyPolicy,
              );
              await launchUrl(
                Uri.parse(url),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.help_outline,
              color: Colors.black,
            ),
            title: const Text(
              'FAQ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.mail_outline_outlined,
              color: Colors.black,
            ),
            title: const Text(
              'お問い合わせ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () async {
              final url = await ref.read(fetchUrlUseCaseProvider)(
                type: UrlType.contact,
              );
              await launchUrl(
                Uri.parse(url),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
            title: const Text(
              'ログアウト',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () => ref.read(signOutUseCaseProvider)(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                '退会する',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Text(
              'バージョン ${setting.appVersion}',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
