import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import '../../../../app/config/config.dart';
import '../../../../di/di.dart';
import '../../../../domain/model/treatment.dart';
import '../cubit/treatment_cubit.dart';

class _Constant {
  String label = 'Tất cả ưu đãi';
  String all = 'Tất cả';
  double heightItem = 200;
  String point = 'điểm';
}

class AllTreatmentWidget extends StatefulWidget {
  const AllTreatmentWidget({super.key});

  @override
  State<AllTreatmentWidget> createState() => _AllTreatmentWidgetState();
}

class _AllTreatmentWidgetState extends State<AllTreatmentWidget> {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TreatmentCubit>()..fetchAllTreatment(),
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
              ],
            ),
          ),
          SizedBox(
            child: BlocConsumer<TreatmentCubit, BaseState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is SuccessState<List<TreatmentModel>>) {
                  return ListView.builder(
                    itemCount: state.data.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
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
                                'imageBanner': state.data[index].imageUrl,
                                'title': state.data[index].title,
                                'description': state.data[index].content,
                              },
                            );
                          },
                        ),
                      );
                    },
                  );
                } else {
                  // context.read<TreatmentCubit>().fetchTreatment();
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

  Widget _item(TreatmentModel treatment, {required Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: cardWidget(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CachedNetworkImage(
                height: _Constant().heightItem,
                width: double.infinity,
                fit: BoxFit.cover,
                imageUrl: treatment.imageUrl,
                placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Container(
                padding: EdgeInsets.all(NumberConstant.basePadding),
                height: 60,
                child: Text(
                  treatment.title,
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
