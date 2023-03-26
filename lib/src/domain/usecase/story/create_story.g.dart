// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_story.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createStoryHash() => r'fa781a22f623e26e9f218d950bf265ab1421e6f9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef CreateStoryRef = AutoDisposeFutureProviderRef<ChatCompletion>;

/// See also [createStory].
@ProviderFor(createStory)
const createStoryProvider = CreateStoryFamily();

/// See also [createStory].
class CreateStoryFamily extends Family<AsyncValue<ChatCompletion>> {
  /// See also [createStory].
  const CreateStoryFamily();

  /// See also [createStory].
  CreateStoryProvider call({
    required String location,
    required String character,
  }) {
    return CreateStoryProvider(
      location: location,
      character: character,
    );
  }

  @override
  CreateStoryProvider getProviderOverride(
    covariant CreateStoryProvider provider,
  ) {
    return call(
      location: provider.location,
      character: provider.character,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createStoryProvider';
}

/// See also [createStory].
class CreateStoryProvider extends AutoDisposeFutureProvider<ChatCompletion> {
  /// See also [createStory].
  CreateStoryProvider({
    required this.location,
    required this.character,
  }) : super.internal(
          (ref) => createStory(
            ref,
            location: location,
            character: character,
          ),
          from: createStoryProvider,
          name: r'createStoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createStoryHash,
          dependencies: CreateStoryFamily._dependencies,
          allTransitiveDependencies:
              CreateStoryFamily._allTransitiveDependencies,
        );

  final String location;
  final String character;

  @override
  bool operator ==(Object other) {
    return other is CreateStoryProvider &&
        other.location == location &&
        other.character == character;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, location.hashCode);
    hash = _SystemHash.combine(hash, character.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
