import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import 'package:redplus_ft/presentation/views/home/cubit/banner_cubit.dart';

import '../../../../app/common/common.dart';
import '../../../../app/config/config.dart';
import '../../../../di/di.dart';
import '../../../../domain/model/banner.dart';

class _Constant {
  double heightItem = 180;
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BannerCubit>()..fetchBanner(),
      child: Center(
        child: Container(
          height: _Constant().heightItem,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: NumberConstant.basePadding,
          ),
          child: BlocConsumer<BannerCubit, BaseState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is LoadingState) {
                return Center(
                  child: CircularProgressIndicator(
                    color: AppColor.primary,
                    backgroundColor: AppColor.primary.withAlpha(10),
                    strokeWidth: 4,
                  ),
                );
              }
              if (state is SuccessState) {
                final data = state.data as List<BannerModel>;
                return CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(
                      milliseconds: 800,
                    ),
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    viewportFraction: 0.8,
                  ),
                  items: data.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return GestureDetector(
                          onTap: () {
                            context.pushNamed(AppRouteConstants.postDetailScreenRoute.name,
                                queryParameters: {
                                  'imageBanner': item.imageUrl,
                                  'title': item.title,
                                  'description': item.content,
                                });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                NumberConstant.baseRadiusBorder,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                NumberConstant.baseRadiusBorder,
                              ),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: item.imageUrl,
                                placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
