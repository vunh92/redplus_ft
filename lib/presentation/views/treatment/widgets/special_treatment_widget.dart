import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';

import '../../../../app/config/config.dart';
import '../../../../domain/model/treatment.dart';
import '../cubit/special_treatment_cubit.dart';

class _Constant {
  String label = 'Ưu đãi đặt biệt';
  String all = 'Tất cả';
  double heightItem = 230;
  String point = 'điểm';
}

class SpecialTreatmentWidget extends StatelessWidget {
  const SpecialTreatmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SpecialTreatmentCubit, BaseState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                ],
              ),
            ),
            SizedBox(
              height: _Constant().heightItem,
              child: BlocConsumer<SpecialTreatmentCubit, BaseState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is SuccessState<List<TreatmentModel>>) {
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
                                AppRouteConstants
                                    .treatmentDetailScreenRoute
                                    .name,
                                extra: state.data[index],
                              );
                            },
                          ),
                        );
                      },
                    );
                  } else {
                    context.read<SpecialTreatmentCubit>().fetchTreatment();
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
      },
    );
  }

  Widget _item(TreatmentModel treatment, {required Function()? onTap}) {
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
                  width: double.infinity,
                  fit: BoxFit.cover,
                  imageUrl: treatment.imageUrl,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Container(
                padding: EdgeInsets.all(NumberConstant.basePadding),
                height: 60,
                child: Center(
                  child: Text(
                    treatment.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
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
                      '${treatment.point} ${_Constant().point}',
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
      ),
    );
  }
}
