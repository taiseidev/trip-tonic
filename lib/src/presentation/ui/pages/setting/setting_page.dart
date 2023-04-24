import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/presentation/ui/pages/setting/setting_notifier.dart';
import 'package:trip_tonic/src/usecase/app_user/app_user_provider.dart';
import 'package:trip_tonic/src/usecase/auth/sign_out.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});

  static const pagePath = 'setting';

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
              value: appUser.pushNotificationEnabled,
              onChanged: (value) {},
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
              value: appUser.pushAnnouncementEnabled,
              onChanged: (value) {},
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
            onTap: () {},
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
            onTap: () {},
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
            onTap: () {},
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
            onTap: () => ref.read(signOutProvider)(),
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
