import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/helpers/shared_preference/shared_preference_helper.dart';
import 'package:trip_tonic/src/infrastructure/helpers/shared_preference/shared_preference_key.dart';
import 'package:trip_tonic/src/presentation/hooks/user_effect_once.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/elevated_button_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/image_asset_atoms.dart';

class SignInPageTemplate extends HookConsumerWidget {
  const SignInPageTemplate({
    super.key,
    required this.anonymouslyText,
    required this.googleText,
    required this.appleText,
    required this.imagePath,
    required this.onPressedAnonymously,
    required this.onPressedGoogle,
    required this.onPressedApple,
  });

  final String imagePath;
  final String anonymouslyText;
  final String googleText;
  final String appleText;
  final VoidCallback onPressedAnonymously;
  final VoidCallback onPressedGoogle;
  final VoidCallback onPressedApple;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerData = useState<String>('');
    useEffectOnce(() {
      final localDb = ref.read(sharedPreferencesRepositoryProvider);
      providerData.value =
          localDb.fetch<String>(SharedPreferencesKey.previousLoginMethod) ??
              '登録されていません';
      return null;
    });

    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageAssetAtoms(path: imagePath),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('前回は${providerData.value}で登録しています'),
              ElevatedButtonAtoms(
                onPressed: onPressedAnonymously,
                text: anonymouslyText,
              ),
              ElevatedButtonAtoms(
                onPressed: onPressedGoogle,
                text: googleText,
              ),
              ElevatedButtonAtoms(
                onPressed: onPressedApple,
                text: appleText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
