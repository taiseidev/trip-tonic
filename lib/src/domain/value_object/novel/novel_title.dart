import 'package:equatable/equatable.dart';

class NovelTitle extends Equatable {
  const NovelTitle(this.value);
  final String value;

  @override
  List<Object> get props => [value];
}
