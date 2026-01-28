import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../domain/repository/home_repository.dart';

part 'pagination_state.dart';

@Injectable()
class PaginationCubit extends Cubit<PaginationState> {
  final HomeRepository _homeRepository;
  PaginationCubit(this._homeRepository) : super(PaginationInitial());

  int _currentPage = 1;
  final int _limit = 20;
  bool _isLoadingMore = false;

  Future<void> fetchData() async {
    if (_isLoadingMore) return;

    final currentState = state;

    if (currentState is PaginationLoaded) {
      if (currentState.hasReachedMax) return;
      _isLoadingMore = true;
      emit(currentState.copyWith(isLoadingMore: true));
    } else {
      emit(PaginationLoading());
      _currentPage = 1;
    }

    try {
      final either = await _homeRepository.fetchNews(_currentPage, _limit);
      either.fold(
            (failure) {
            _isLoadingMore = false;
            emit(PaginationError(failure.toString()));
        },
            (data) async {
              final List<dynamic> allItems = (currentState is PaginationLoaded)
                  ? [...currentState.items, ...data]
                  : data;
              final bool hasReachedMax = data.length < _limit;

              _currentPage++;
              _isLoadingMore = false;
              emit(PaginationLoaded(items: allItems, hasReachedMax: hasReachedMax));
        },
      );
    } catch (e) {
      _isLoadingMore = false;
      emit(PaginationError(e.toString()));
    }
  }
}
