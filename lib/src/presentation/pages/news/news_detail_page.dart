import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  static const pageName = 'notification_detail';
  static const pagePath = '/notification_detail';

  TextStyle get style => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'お知らせ詳細画面',
          style: style,
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(24),
                const Text(
                  '2023/2/23',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(8),
                const Text(
                  '最新版アプリが公開されました。ぜひアップデートをお願いします。',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(8),
                Divider(
                  color: Colors.grey[200],
                ),
                const Gap(8),
                // お知らせ内容の仮文章を追加
                const Text(
                  'いつもTRIP TONICをご利用いただき誠にありがとうございます。運営のshigurenaです。\n\nTRIP TONICの最新版（2.0.0）をリリースしましたので、ぜひアップデートをお願いします！今回のアップデート内容は以下のとおりです。\n\n・タイムライン機能の追加\n→ユーザ同士で旅プランの共有や投稿ができるようになりました！頑張って作りましたので皆さんにぜひ使っていただきたいです！\n\n・軽微なバグの修正\n→ユーザの皆様からいただいた意見を元に軽微なバグの修正を行いました！\n\nまた、ご要望やバグ等のお問い合わせは下記からお願いいたします！\n\nhttps://google.com\n\n今後ともTRIP TONICをよろしくお願いいたします！',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
