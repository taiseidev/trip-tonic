import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/extensions/ref_extension.dart';
import 'package:trip_tonic/model/api_service.dart';

class MapPage extends HookConsumerWidget {
  MapPage({super.key});

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);

    ref.handleAsyncValue(
      loginStateProvider,
      completeMessage: '完了しました',
      complete: (context, _) {},
    );

    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: _controller.complete,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ref.read(userServiceProvider).login(),
        label: Text(l10n.notification),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }
}

/// ログイン処理状態
final loginStateProvider = StateProvider<AsyncValue<void>>(
  (_) => const AsyncValue.data(null),
);

/// ユーザーサービスプロバイダー
final userServiceProvider = Provider(
  UserService.new,
);

class UserService {
  UserService(this.ref);

  final Ref ref;

  Future<void> login() async {
    ref.read(loginStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(() async {
        final apiKey = await FlutterConfig.get('CHAT_GPT_API_KEY');
        final dio = Dio();
        dio.interceptors.add(LogInterceptor());
        final body = PostData(
          body: ''' 
        あなたはプロの旅行プランナーです。下記の情報に沿って旅行プランを作成してください。
        なお、話し方は20代女性をイメージした話し方にしてください。

        目的地：京都
        日程：2023/3/15 ~ 2023/3/17
        人数：5人
        目的：京都の歴史的建造物を楽しむ旅行
        交通手段：電車優先

        回答の形式は下記の形式でお願いします。
        --------------------------------------------------------
        前置きと目的地の簡単な説明
        --------------------------------------------------------
        ◯日目
        - {{目的地（住所）}} 目的地の説明
        | （交通手段（ex: 電車）、料金（ex: 230円））
        - {{目的地（住所）}} 目的地の説明
        --------------------------------------------------------
        ''',
        );
        final content = await ApiService(dio).createPost(
          'Bearer $apiKey',
          body,
        );
        debugPrint(content.object);
      });
  }
}

// 下記タブ確認用のサンプル画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const pageName = 'home';
  static const pagePath = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ホーム画面'),
      ),
    );
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('履歴画面'),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('お知らせ画面'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('プロフィール画面'),
      ),
    );
  }
}
