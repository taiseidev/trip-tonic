// 画面遷移時に渡す引数用クラスを定義する

class CreateStoryArgs {
  CreateStoryArgs({
    required this.genre,
    required this.keyWord,
    required this.characters,
  });

  final String genre;
  final String keyWord;
  final List<String> characters;
}
