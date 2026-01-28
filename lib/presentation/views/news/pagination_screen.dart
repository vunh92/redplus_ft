import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/common/common.dart';
import '../../../domain/model/banner.dart';
import 'cubit/pagination_cubit.dart';

class _Constant {
  String label = 'Tin tức';
  double heightItem = 200;
}

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({super.key});

  @override
  State<PaginationScreen> createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<PaginationCubit>().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paginated Pagination'),
        backgroundColor: AppColor.primary,
        iconTheme: IconThemeData(color: Colors.white),
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<PaginationCubit, PaginationState>(
        builder: (context, state) {
          if (state is PaginationLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PaginationLoaded) {
            return ListView.builder(
              controller: _scrollController,
              itemCount: state.items.length + (state.isLoadingMore ? 1 : 0),
              shrinkWrap: true,
              padding: EdgeInsets.all(NumberConstant.basePadding),
              itemBuilder: (context, index) {
                if (index >= state.items.length) {
                  return Center(child: CircularProgressIndicator());
                }
                return Padding(
                  padding: const EdgeInsets.all(NumberConstant.basePaddingLarge),
                  child: _item(state.items[index], onTap: () {}),
                );
              },
            );
          } else if (state is PaginationError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return Container();
        },
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<PaginationCubit>().fetchData();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= maxScroll * 0.9; // Trigger load when 90% down
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _item(BannerModel banner, {required Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 300,
        child: cardWidget(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CachedNetworkImage(
                fit: BoxFit.cover,
                height: _Constant().heightItem,
                imageUrl: banner.imageUrl,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Container(
                padding: EdgeInsets.all(NumberConstant.basePadding),
                height: 60,
                child: Text(
                  banner.title,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
