import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

part 'otp_timer_state.dart';

@Injectable()
class OtpTimerCubit extends Cubit<OtpTimerState> {
  OtpTimerCubit() : super(OtpTimerInitial());

  Timer? _timer;
  static const _duration = 120;

  startWorkout([int? index]){
    WakelockPlus.enable();
    if(index != null){
      emit(OtpTimerRunInProgress(_duration));
    }else{
      emit(OtpTimerRunInProgress(_duration));
    }
    _timer = Timer.periodic(const Duration(seconds: 1), onTick);
  }

  onTick(Timer timer){
    if(state is OtpTimerRunInProgress) {
      OtpTimerRunInProgress wip = state as OtpTimerRunInProgress;
      if(wip.duration > 0) {
        emit(OtpTimerRunInProgress( wip.duration - 1 ));
      } else {
        _timer?.cancel();
        WakelockPlus.disable();
        emit(OtpTimerRunComplete());
      }
    }
  }

  Future<void> stopWorkout() async {
    _timer?.cancel();
    WakelockPlus.disable();
  }

  @override
  Future<void> close() {
    _timer = null;
    return super.close();
  }
}
