part of 'app_cubit.dart';

class AppState extends Equatable {
  final User? user;
  final String? token;

  const AppState({this.user, this.token});

  AppState copyWith({
    User? user,
    String? token,
  }) {
    return AppState(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  @override
  List<Object?> get props => [user, token];
}

final class AppInitial extends AppState {
  const AppInitial() : super();
}
