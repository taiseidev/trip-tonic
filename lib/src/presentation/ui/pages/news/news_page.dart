import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/extensions/datetime_extension.dart';
import 'package:trip_tonic/src/presentation/ui/pages/news/news_detail_page.dart';
import 'package:trip_tonic/src/usecase/news/fetch_news_list.dart';

enum NewsType {
  notice('お知らせ'),
  news('ニュース');

  const NewsType(this.type);
  final String type;
}

class NewsPage extends HookConsumerWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = useState(NewsType.notice.name);
    final news = ref.watch(fetchNewsListProvider);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            news.when(
              data: (newsList) {
                // 運営からのお知らせ一覧
                final announcementList = newsList.announcementList;

                // お知らせ一覧
                final notificationList = newsList.notificationList;

                // お知らせかニュースか
                final isNotification = currentTab.value == NewsType.notice.name;

                // 未読数
                final unreadCount =
                    isNotification ? notificationList.unreadCount : '0';

                // お知らせがない場合は表示
                if (announcementList.announcements.isEmpty ||
                    notificationList.notifications.isEmpty) {
                  return const Text(
                    'お知らせはありません',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  );
                }

                return Expanded(
                  child: Column(
                    children: [
                      // タブ切り替えボタン
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Stack(
                            children: [
                              CustomSlidingSegmentedControl<String>(
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
                                onValueChanged: (value) =>
                                    currentTab.value = value,
                              ),
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                child: Align(
                                  alignment: isNotification
                                      ? Alignment.topCenter
                                      : Alignment.topRight,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      unreadCount.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async =>
                              ref.invalidate(fetchNewsListProvider),
                          child: ListView.separated(
                            itemCount: isNotification
                                ? notificationList.notifications.length
                                : announcementList.announcements.length,
                            itemBuilder: (context, index) {
                              final announcement =
                                  announcementList.announcements[index];
                              final notification =
                                  notificationList.notifications[index];
                              return SizedBox(
                                height: 100,
                                child: ListTile(
                                  onTap: () =>
                                      context.push(NewsDetailPage.pagePath),
                                  leading: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // 未読の場合は表示
                                      Visibility(
                                        visible: isNotification &&
                                            !notification.isRead,
                                        child: Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                      ),
                                      const Icon(Icons.fiber_new),
                                    ],
                                  ),
                                  title: Text(
                                    isNotification
                                        ? notification.title
                                        : announcement.title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 24),
                                    child: Text(
                                      isNotification
                                          ? notification.createdAt
                                              .dateToString()
                                          : announcement.createdAt
                                              .dateToString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) => Divider(
                              thickness: 2,
                              indent: 80,
                              color: Colors.grey[200],
                            ),
                          ),
                        ),
                      ),
                    ],
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
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
