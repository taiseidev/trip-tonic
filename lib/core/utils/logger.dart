import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<dynamic> provider,
    Object? value,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.v(
        '[RIVERPOD][ADD] $name: value = $value',
      );
    }
  }

  @override
  void providerDidFail(
    ProviderBase<dynamic> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.w(
        '[RIVERPOD][ERROR] $name',
        error,
        stackTrace,
      );
    }
  }

  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.v(
        '[RIVERPOD][UPDATE] $name: '
        'newValue = $newValue',
      );
    }
  }

  @override
  void didDisposeProvider(
    ProviderBase<dynamic> provider,
    ProviderContainer container,
  ) {
    final name = provider.name;
    if (name != null) {
      logger.v(
        '[RIVERPOD][DISPOSE] $name',
      );
    }
  }
}
