part of 'bottom_bar_bloc.dart';

sealed class BottomBarEvent extends Equatable {
  const BottomBarEvent();
}

class BottomBarClickedEvent extends BottomBarEvent {
  final int index;

  const BottomBarClickedEvent({required this.index});

  @override
  List<Object?> get props => [index];
}
