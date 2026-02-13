import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../../app/common/common.dart';
import '../../../../app/config/config.dart';
import '../../../../app/cubit/base_cubit.dart';
import '../../../../di/di.dart';
import '../../../../domain/model/banner.dart';
import '../../home/cubit/hot_cubit.dart';

class _Constant {
  String label = 'Tin mới nhất';
  String all = 'Tất cả';
  double heightItem = 230;
  double widthItem = 300;
}

class LatestNews extends StatelessWidget {
  final String routerPath;
  const LatestNews({super.key, required this.routerPath});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HotCubit>()..fetchHot(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: NumberConstant.basePaddingLarge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _Constant().label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(
                      AppRouteConstants.newsScreenRoute.name,
                    );
                  },
                  child: Text(
                    _Constant().all,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColor.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: _Constant().heightItem,
            child: BlocConsumer<HotCubit, BaseState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is SuccessState<List<BannerModel>>) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.data.length,
                    padding: EdgeInsets.symmetric(
                      horizontal: NumberConstant.basePadding,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(
                          NumberConstant.basePadding,
                        ),
                        child: _item(
                          state.data[index],
                          onTap: () {
                            context.pushNamed(
                              AppRouteConstants.postDetailScreenRoute.name,
                              queryParameters: {
                                'routerPath': routerPath,
                              },
                              extra: state.data[index],
                            );
                          },
                        ),
                      );
                    },
                  );
                } else {
                  context.read<HotCubit>().fetchHot();
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(
                      horizontal: NumberConstant.basePadding,
                    ),
                    children: [
                      Shimmer(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey,
                          ),
                          width: _Constant().widthItem,
                          height: _Constant().heightItem,
                        ),
                      ),
                      SizedBox(width: NumberConstant.basePaddingLarge),
                      Shimmer(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey,
                          ),
                          width: _Constant().widthItem,
                          height: _Constant().heightItem,
                        ),
                      ),
                    ],
                  );
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primary,
                      backgroundColor: AppColor.primary.withAlpha(10),
                      strokeWidth: 4,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _item(BannerModel banner, {required Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: _Constant().widthItem,
        child: cardWidget(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: banner.imageUrl,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Container(
                padding: EdgeInsets.all(NumberConstant.basePadding),
                height: 60,
                child: Text(
                  banner.title,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    decorationColor: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
