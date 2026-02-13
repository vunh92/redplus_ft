import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../domain/model/brand_detail.dart';

class _Constant {
  String info = 'THÔNG TIN';
  String openHour = 'Giờ mở cửa';
  String phone = 'Thương hiệu';
  String viewAll = 'Xem tất cả';
}

class BrandDetailScreen extends StatefulWidget {
  final BrandDetailModel brandDetail;

  const BrandDetailScreen({super.key, required this.brandDetail});

  @override
  State<BrandDetailScreen> createState() => _BrandDetailScreenState();
}

class _BrandDetailScreenState extends State<BrandDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: widget.brandDetail.imageUrl,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    spacing: NumberConstant.basePadding,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(NumberConstant.basePadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: Constants.listBrand
                                .firstWhere(
                                  (element) =>
                                      element.id == widget.brandDetail.brandId,
                                )
                                .imageUrl,
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                      Text(
                        widget.brandDetail.title,
                        maxLines: 1,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColor.disable,
                  thickness: NumberConstant.basePadding,
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    NumberConstant.basePaddingLarge,
                  ),
                  child: Text(
                    _Constant().info,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blue,
                    ),
                  ),
                ),
                Divider(color: AppColor.disable),
                Padding(
                  padding: const EdgeInsets.all(
                    NumberConstant.basePaddingLarge,
                  ),
                  child: Row(
                    spacing: NumberConstant.basePadding,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColor.textSecondary,
                        size: 24,
                      ),
                      Expanded(
                        child: Text(
                          widget.brandDetail.address,
                          softWrap: true,
                          style: TextStyle(color: AppColor.text, fontSize: 18),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          openGoogleMaps(
                            latitude: widget.brandDetail.lat,
                            longitude: widget.brandDetail.lng
                          );
                        },
                        child: Icon(
                          Icons.next_plan_rounded,
                          color: AppColor.blue,
                          size: 34,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: AppColor.disable),
                Padding(
                  padding: const EdgeInsets.all(
                    NumberConstant.basePaddingLarge,
                  ),
                  child: Row(
                    spacing: NumberConstant.basePadding,
                    children: [
                      Icon(
                        Icons.phone,
                        color: AppColor.textSecondary,
                        size: 24,
                      ),
                      Expanded(
                        child: Text(
                          widget.brandDetail.phone,
                          softWrap: true,
                          style: TextStyle(color: AppColor.text, fontSize: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // launchUrlString("tel://214324234");
                          // launchUrlString("tel:+1-555-010-999");
                          launchUrlString("tel://${widget.brandDetail.phone}");
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColor.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: AppColor.disable),
                Padding(
                  padding: const EdgeInsets.all(
                    NumberConstant.basePaddingLarge,
                  ),
                  child: Row(
                    spacing: NumberConstant.basePadding,
                    children: [
                      Icon(
                        Icons.timer,
                        color: AppColor.textSecondary,
                        size: 24,
                      ),
                      Expanded(
                        child: Text(
                          _Constant().openHour,
                          softWrap: true,
                          style: TextStyle(color: AppColor.text, fontSize: 18),
                        ),
                      ),
                      Text(
                        widget.brandDetail.openHour,
                        style: TextStyle(color: AppColor.green, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Divider(color: AppColor.disable),
                Padding(
                  padding: const EdgeInsets.all(
                    NumberConstant.basePaddingLarge,
                  ),
                  child: Row(
                    spacing: NumberConstant.basePadding,
                    children: [
                      Icon(Icons.link, color: AppColor.textSecondary, size: 24),
                      Expanded(
                        child: Text(
                          widget.brandDetail.link,
                          softWrap: true,
                          style: TextStyle(color: AppColor.text, fontSize: 18),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          launchUrlString(widget.brandDetail.link);
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColor.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.language,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: AppColor.disable),
                Padding(
                  padding: const EdgeInsets.all(
                    NumberConstant.basePaddingLarge,
                  ),
                  child: Row(
                    spacing: NumberConstant.basePadding,
                    children: [
                      Expanded(
                        child: Text(
                          widget.brandDetail.content,
                          softWrap: true,
                          style: TextStyle(color: AppColor.text, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            context.pop();
                          },
                          child: Text(
                            _Constant().viewAll,
                            style: TextStyle(
                              color: AppColor.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: NumberConstant.basePadding,
              child: SafeArea(
                top: true,
                child: GestureDetector(
                  onTap: () => context.pop(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
