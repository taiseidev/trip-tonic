import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/usecase/app_user/app_user_provider.dart';

class TimeLinePage extends ConsumerWidget {
  const TimeLinePage({super.key});

  static const pageName = 'timeline';
  static const pagePath = '/timeline';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appUserNotifierProvider).asData?.value;

    if (state == null) {
      return const Loading();
    }

    return Text(state.pushAnnouncementEnabled.toString());
  }
}
