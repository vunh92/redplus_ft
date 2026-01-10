part of 'bottom_bar_bloc.dart';

sealed class BottomBarState extends Equatable {
  final int index;

  const BottomBarState({this.index = 0});
}

final class BottomBarInitial extends BottomBarState {
  const BottomBarInitial() : super();

  @override
  List<Object?> get props => [];
}

class BottomBarPageState extends BottomBarState {

  const BottomBarPageState({required super.index});

  @override
  List<Object?> get props => [index];
}
