// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_story.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createStoryHash() => r'9a0a3ba082b70d939c863a9e659f0aee1e31ac6f';

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

typedef CreateStoryRef = AutoDisposeFutureProviderRef<String>;

/// See also [createStory].
@ProviderFor(createStory)
const createStoryProvider = CreateStoryFamily();

/// See also [createStory].
class CreateStoryFamily extends Family<AsyncValue<String>> {
  /// See also [createStory].
  const CreateStoryFamily();

  /// See also [createStory].
  CreateStoryProvider call({
    required String genre,
    required String keyWord,
    required String character,
  }) {
    return CreateStoryProvider(
      genre: genre,
      keyWord: keyWord,
      character: character,
    );
  }

  @override
  CreateStoryProvider getProviderOverride(
    covariant CreateStoryProvider provider,
  ) {
    return call(
      genre: provider.genre,
      keyWord: provider.keyWord,
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
class CreateStoryProvider extends AutoDisposeFutureProvider<String> {
  /// See also [createStory].
  CreateStoryProvider({
    required this.genre,
    required this.keyWord,
    required this.character,
  }) : super.internal(
          (ref) => createStory(
            ref,
            genre: genre,
            keyWord: keyWord,
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

  final String genre;
  final String keyWord;
  final String character;

  @override
  bool operator ==(Object other) {
    return other is CreateStoryProvider &&
        other.genre == genre &&
        other.keyWord == keyWord &&
        other.character == character;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genre.hashCode);
    hash = _SystemHash.combine(hash, keyWord.hashCode);
    hash = _SystemHash.combine(hash, character.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
