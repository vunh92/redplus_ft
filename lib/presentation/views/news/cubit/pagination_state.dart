part of 'pagination_cubit.dart';

sealed class PaginationState {}

final class PaginationInitial extends PaginationState {}

class PaginationLoading extends PaginationState {}

class PaginationLoaded extends PaginationState {
  final List<dynamic> items;
  final bool isLoadingMore;
  final bool hasReachedMax;

  PaginationLoaded({required this.items, this.isLoadingMore = false, this.hasReachedMax = false});

  PaginationLoaded copyWith({
    List<dynamic>? items,
    bool? isLoadingMore,
    bool? hasReachedMax,
  }) {
    return PaginationLoaded(
      items: items ?? this.items,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

class PaginationError extends PaginationState {
  final String message;

  PaginationError(this.message);
}
