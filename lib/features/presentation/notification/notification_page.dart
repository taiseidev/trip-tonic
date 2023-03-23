import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:trip_tonic/features/presentation/notification/notification_detail_page.dart';

enum NoticeType {
  notice('お知らせ'),
  news('ニュース');

  const NoticeType(this.type);
  final String type;
}

class NotificationPage extends HookWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTab = useState(NoticeType.notice.name);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: CustomSlidingSegmentedControl<String>(
                  initialValue: currentTab.value,
                  isStretch: true,
                  children: {
                    NoticeType.notice.name: Text(
                      NoticeType.notice.type,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    NoticeType.news.name: Text(
                      NoticeType.news.type,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  },
                  innerPadding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(14),
                  ),
                  thumbDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onValueChanged: (value) => currentTab.value = value,
                ),
              ),
            ),
            Visibility(
              visible: currentTab.value == NoticeType.notice.name,
              child: Expanded(
                child: ListView.separated(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 100,
                      child: ListTile(
                        onTap: () =>
                            context.push(NotificationDetailPage.pagePath),
                        leading: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 未読の場合は表示
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const Icon(Icons.fiber_new),
                          ],
                        ),
                        title: const Text(
                          '最新版アプリが公開されました。ぜひアップデートをお願いします。',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: const Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: Text(
                            '2023/2/23',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(
                    indent: 80,
                    color: Colors.grey[200],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: currentTab.value == NoticeType.news.name,
              child: const Text(
                'お知らせがありません',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
