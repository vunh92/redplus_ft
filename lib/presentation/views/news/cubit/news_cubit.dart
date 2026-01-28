import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/repository/home_repository.dart';

part 'news_state.dart';

@Injectable()
class NewsCubit extends Cubit<NewsState> {
  final HomeRepository _homeRepository;
  NewsCubit(this._homeRepository) : super(NewsInitial());

  int _currentPage = 1;
  final int _limit = 20;
  bool _isLoadingMore = false;

  Future<void> fetchNews() async {
    if (_isLoadingMore) return;

    final currentState = state;

    if (currentState is NewsLoaded) {
      if (currentState.hasReachedMax) return;
      _isLoadingMore = true;
      emit(currentState.copyWith(isLoadingMore: true));
    } else {
      emit(NewsLoading());
      _currentPage = 1;
    }

    try {
      final either = await _homeRepository.fetchNews(_currentPage, _limit);
      either.fold(
            (failure) {
          _isLoadingMore = false;
          emit(NewsError(failure.toString()));
        },
            (data) async {
          final List<dynamic> allItems = (currentState is NewsLoaded)
              ? [...currentState.items, ...data]
              : data;
          final bool hasReachedMax = data.length < _limit;

          _currentPage++;
          _isLoadingMore = false;
          emit(NewsLoaded(items: allItems, hasReachedMax: hasReachedMax));
        },
      );
    } catch (e) {
      _isLoadingMore = false;
      emit(NewsError(e.toString()));
    }
  }
}
