import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/domain/model/brand.dart';

import '../../../../app/config/router/app_route_constants.dart';

class _Constant {
  String label = 'Thương hiệu';
  String all = 'Tất cả';
  double sizeItem = 110;
}

class BrandWidget extends StatelessWidget {
  const BrandWidget({super.key});

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
                onTap: () {
                  context.pushNamed(
                    AppRouteConstants.searchBrandScreenRoute.name,
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
          height: _Constant().sizeItem,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Constants.listBrand.length,
            padding: EdgeInsets.symmetric(
              horizontal: NumberConstant.basePadding,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(NumberConstant.basePadding),
                child: _item(Constants.listBrand[index], onTap: () {
                  context.pushNamed(
                    AppRouteConstants.searchBrandScreenRoute.name,
                    extra: Constants.listBrand[index],
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _item(BrandModel brand, {required Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(0),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: brand.imageUrl,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
