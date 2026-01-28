part of 'news_cubit.dart';

sealed class NewsState {}

final class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsLoaded extends NewsState {
  final List<dynamic> items;
  final bool isLoadingMore;
  final bool hasReachedMax;

  NewsLoaded({required this.items, this.isLoadingMore = false, this.hasReachedMax = false});

  NewsLoaded copyWith({
    List<dynamic>? items,
    bool? isLoadingMore,
    bool? hasReachedMax,
  }) {
    return NewsLoaded(
      items: items ?? this.items,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

class NewsError extends NewsState {
  final String message;

  NewsError(this.message);
}
