import 'package:flutter_bloc/flutter_bloc.dart';

part 'base_state.dart';

// abstract class BaseCubit<S extends BaseState> extends Cubit<S> {
//   BaseCubit(super.initialState);
abstract class BaseCubit extends Cubit<BaseState> {
  BaseCubit(super.initialState);

  void emitLoading() => emit(LoadingState());
  void emitLoadingPopup(bool isShow) => emit(LoadingPopupState(isShow));
  void emitSuccess<T>(T data) => emit(SuccessState(data));
  void emitError(String message) => emit(ErrorState(message));
}