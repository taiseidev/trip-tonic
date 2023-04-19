import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/extensions/datetime_extension.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/presentation/ui/pages/news/news_detail_page.dart';
import 'package:trip_tonic/src/usecase/notification/fetch_notification_list.dart';

enum NewsType {
  notice('お知らせ'),
  news('ニュース');

  const NewsType(this.type);
  final String type;
}

class NotificationPage extends HookConsumerWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = useState(NewsType.notice.name);
    final notifications = ref.watch(fetchNotificationListProvider);

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
                    NewsType.notice.name: Text(
                      NewsType.notice.type,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    NewsType.news.name: Text(
                      NewsType.news.type,
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
              visible: currentTab.value == NewsType.notice.name,
              child: notifications.when(
                data: (notificationList) {
                  // お知らせがない場合は表示
                  if (notificationList.notifications.isEmpty) {
                    return const Text(
                      'お知らせはありません',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    );
                  }

                  return Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        ref.invalidate(fetchNotificationListProvider);
                      },
                      child: ListView.separated(
                        itemCount: notificationList.notifications.length,
                        itemBuilder: (context, index) {
                          final notification =
                              notificationList.notifications[index];
                          return SizedBox(
                            height: 100,
                            child: ListTile(
                              onTap: () =>
                                  context.push(NewsDetailPage.pagePath),
                              leading: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // 未読の場合は表示
                                  Visibility(
                                    visible: !notification.isRead,
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.fiber_new),
                                ],
                              ),
                              title: Text(
                                notification.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: Text(
                                  notification.createdAt.dateToString(),
                                  style: const TextStyle(
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
                  );
                },
                error: (error, stackTrace) {
                  return const Text(
                    'エラーが発生しました',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  );
                },
                loading: () => const Center(
                  child: Loading(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
