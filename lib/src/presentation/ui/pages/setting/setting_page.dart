import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static const pagePath = 'setting';

  @override
  Widget build(BuildContext context) {
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
                '＊ お知らせの通知を受け取るかの設定ができます。',
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
              value: false,
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
              value: false,
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
          const ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              color: Colors.black,
            ),
            title: Text(
              'プライバシーポリシー',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.help_outline,
              color: Colors.black,
            ),
            title: Text(
              'FAQ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.mail_outline_outlined,
              color: Colors.black,
            ),
            title: Text(
              'お問い合わせ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
            title: Text(
              'ログアウト',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
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
          const Padding(
            padding: EdgeInsets.only(top: 32),
            child: Text(
              'バージョン 1.0.0',
              style: TextStyle(
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
