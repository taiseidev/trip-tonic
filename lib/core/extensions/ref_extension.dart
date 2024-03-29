import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/global_key.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/core/utils/scaffold_messenger_key.dart';

extension WidgetRefEx on WidgetRef {
  /// AsyncValueを良い感じにハンドリングする
  void handleAsyncValue<T>(
    ProviderListenable<AsyncValue<T>> asyncValueProvider, {
    void Function(BuildContext context, T data)? complete,
    String? completeMessage,
  }) =>
      listen<AsyncValue<T>>(
        asyncValueProvider,
        (_, next) async {
          final loadingNotifier = read(loadingProvider.notifier);
          if (next.isLoading) {
            loadingNotifier.show();
            return;
          }

          next.when(
            data: (data) async {
              loadingNotifier.hide();

              // 完了メッセージがあればスナックバーを表示する
              if (completeMessage != null) {
                read(scaffoldMessengerKeyProvider).currentState?.showSnackBar(
                      SnackBar(
                        content: Text(completeMessage),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
              }
              complete?.call(read(navigatorKeyProvider).currentContext!, data);
            },
            error: (e, s) async {
              loadingNotifier.hide();

              // ログインダイアログを閉じた場合はそのままreturn
              // TODD: 別で切り出す
              if (e.toString() == 'Exception: sign_in_canceled') {
                return;
              }

              // エラーが発生したらエラーダイアログを表示する
              await showDialog<void>(
                context: read(navigatorKeyProvider).currentContext!,
                builder: (context) => AlertDialog(
                  content: Text(e.toString()),
                ),
              );
            },
            loading: loadingNotifier.show,
          );
        },
      );
}
