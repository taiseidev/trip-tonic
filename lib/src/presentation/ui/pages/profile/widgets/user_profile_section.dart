import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trip_tonic/core/extensions/context_extension.dart';

// ユーザ情報を表示、編集ボタンを管理するWidget
class UserProfileSection extends StatelessWidget {
  const UserProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1065&q=80',
          ),
        ),
        const Gap(16),
        // TODO: 適当に作ってしまったので修正
        // TODO: 名前とID部分のバリデーション必須
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                // TODO: l10nで管理
                child: const Text(
                  '無料会員',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              Text(
                'Edward Larry',
                maxLines: 1,
                style: TextStyle(
                  color: context.theme.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              Text(
                'ID: edward_larry_trip',
                maxLines: 1,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            // プロフィール編集画面へ遷移
          },
          icon: Icon(
            Icons.mode_edit_outlined,
            color: Colors.grey[500],
          ),
        )
      ],
    );
  }
}
