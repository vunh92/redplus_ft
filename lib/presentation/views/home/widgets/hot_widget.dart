import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import 'package:redplus_ft/domain/model/banner.dart';

import '../../../../di/di.dart';
import '../cubit/hot_cubit.dart';

class _Constant {
  String label = 'Có gì hot?';
  String all = 'Tất cả';
  double heightItem = 230;
}

class HotWidget extends StatelessWidget {
  const HotWidget({super.key});

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
                  onTap: () {},
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
                        child: _item(state.data[index], onTap: () {}),
                      );
                    },
                  );
                } else {
                  context.read<HotCubit>().fetchHot();
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
        width: 300,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
