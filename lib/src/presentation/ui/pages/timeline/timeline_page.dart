import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/helpers/shared_preference/shared_preference_helper.dart';
import 'package:trip_tonic/src/infrastructure/helpers/shared_preference/shared_preference_key.dart';
import 'package:trip_tonic/src/presentation/hooks/user_effect_once.dart';

class TimeLinePage extends HookConsumerWidget {
  const TimeLinePage({super.key});

  static const pageName = 'timeline';
  static const pagePath = '/timeline';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerData = useState('');

    useEffectOnce(() {
      final localDb = ref.read(sharedPreferencesRepositoryProvider);
      providerData.value =
          localDb.fetch<String>(SharedPreferencesKey.previousLoginMethod) ??
              '登録されていません';
      return null;
    });

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(providerData.value),
        ],
      ),
    );
  }
}
