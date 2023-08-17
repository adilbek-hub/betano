part of 'betano_cubit.dart';

@immutable
sealed class BetanoState {}

final class BetanoInitial extends BetanoState {
  final int indexToRemove;

  BetanoInitial(this.indexToRemove);
}
