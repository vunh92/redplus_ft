part of 'otp_timer_cubit.dart';

abstract class OtpTimerState extends Equatable {
  final int duration;
  const OtpTimerState(this.duration);

  @override
  List<Object> get props => [duration];
}

class OtpTimerInitial extends OtpTimerState {
  const OtpTimerInitial() : super(0);
}

class OtpTimerRunInProgress extends OtpTimerState {
  const OtpTimerRunInProgress(super.duration);
}

class OtpTimerRunPause extends OtpTimerState {
  const OtpTimerRunPause(super.duration);
}

class OtpTimerRunComplete extends OtpTimerState {
  /// at this state, timer's value is 0
  const OtpTimerRunComplete() : super(0);
}