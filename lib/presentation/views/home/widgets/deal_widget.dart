import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import 'package:redplus_ft/domain/model/deal.dart';

import '../../../../di/di.dart';
import '../cubit/deal_cubit.dart';

class _Constant {
  String label = 'Đừng bỏ lỡ';
  String all = 'Tất cả';
  String point = 'điểm';
}

class DealWidget extends StatelessWidget {
  const DealWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          // height: _Constant().heightItem,
          child: BlocConsumer<DealCubit, BaseState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is SuccessState<List<DealModel>>) {
                return GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  padding: EdgeInsets.symmetric(
                    horizontal: NumberConstant.basePadding,
                  ),
                  childAspectRatio: 0.8,
                  children: List.generate(state.data.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(
                        NumberConstant.basePadding,
                      ),
                      child: _item(state.data[index], onTap: () {}),
                    );
                  }),
                );
              } else {
                context.read<DealCubit>().fetchDeal();
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
    );
  }
  Widget _item(DealModel deal, {required Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: deal.imageUrl,
                placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Container(
              padding: EdgeInsets.all(NumberConstant.basePadding),
              height: 60,
              child: Text(
                deal.title,
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: NumberConstant.basePadding,
                bottom: NumberConstant.basePadding,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: NumberConstant.basePadding,
                children: [
                  Icon(
                    Icons.monetization_on,
                    size: 20,
                    color: AppColor.primary,
                  ),
                  Text(
                    '${deal.point} ${_Constant().point}',
                    style: TextStyle(color: AppColor.textSecondary),
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
    ),
      ),
    );
  }
}
