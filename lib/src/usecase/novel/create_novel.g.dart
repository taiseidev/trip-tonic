// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_novel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createNovelHash() => r'5719f90ae9619586b7cd399a72d2746abfd0b005';

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

typedef CreateNovelRef = AutoDisposeFutureProviderRef<Story>;

/// See also [createNovel].
@ProviderFor(createNovel)
const createNovelProvider = CreateNovelFamily();

/// See also [createNovel].
class CreateNovelFamily extends Family<AsyncValue<Story>> {
  /// See also [createNovel].
  const CreateNovelFamily();

  /// See also [createNovel].
  CreateNovelProvider call({
    required String genre,
    required String keyWord,
    required List<String> characters,
  }) {
    return CreateNovelProvider(
      genre: genre,
      keyWord: keyWord,
      characters: characters,
    );
  }

  @override
  CreateNovelProvider getProviderOverride(
    covariant CreateNovelProvider provider,
  ) {
    return call(
      genre: provider.genre,
      keyWord: provider.keyWord,
      characters: provider.characters,
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
  String? get name => r'createNovelProvider';
}

/// See also [createNovel].
class CreateNovelProvider extends AutoDisposeFutureProvider<Story> {
  /// See also [createNovel].
  CreateNovelProvider({
    required this.genre,
    required this.keyWord,
    required this.characters,
  }) : super.internal(
          (ref) => createNovel(
            ref,
            genre: genre,
            keyWord: keyWord,
            characters: characters,
          ),
          from: createNovelProvider,
          name: r'createNovelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createNovelHash,
          dependencies: CreateNovelFamily._dependencies,
          allTransitiveDependencies:
              CreateNovelFamily._allTransitiveDependencies,
        );

  final String genre;
  final String keyWord;
  final List<String> characters;

  @override
  bool operator ==(Object other) {
    return other is CreateNovelProvider &&
        other.genre == genre &&
        other.keyWord == keyWord &&
        other.characters == characters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genre.hashCode);
    hash = _SystemHash.combine(hash, keyWord.hashCode);
    hash = _SystemHash.combine(hash, characters.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
