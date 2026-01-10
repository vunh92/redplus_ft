import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'bottom_bar_event.dart';
part 'bottom_bar_state.dart';

@Injectable()
class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc() : super(const BottomBarPageState(index: 0)) {
    on<BottomBarClickedEvent>(_onBottomBarClickedHandler);
  }

  void _onBottomBarClickedHandler(event, emit) {
    emit(BottomBarPageState(index: event.index));
  }
}
