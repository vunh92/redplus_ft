import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/presentation/widgets/custom_elevated_button.dart';

import '../../../app/config/config.dart';
import '../../../domain/model/treatment.dart';
import '../../../domain/model/user.dart';

class TreatmentDetailScreen extends StatefulWidget {
  final TreatmentModel treatment;

  const TreatmentDetailScreen({super.key, required this.treatment});

  @override
  State<TreatmentDetailScreen> createState() => _TreatmentDetailScreenState();
}

class _Constant {
  double heightHeader = 70.0;
  String redeemTreatment = 'Đổi ưu đãi';
  String endDate = 'Ngày hết hạn';
  String point = 'điểm';
  String yourPoint = 'Số điểm của bạn';
  String quantity = 'Số lượng';
  String total = 'Tổng cộng';
  String confirm = 'Xác nhận';
}

class _TreatmentDetailScreenState extends State<TreatmentDetailScreen> {
  late ScrollController _scrollController;
  Color _textColor = Colors.white;
  static const kExpandedHeight = 200.0;
  late User? user;

  @override
  void initState() {
    loadUser();
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.black;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  loadUser() async {
    user = await getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: _bodyWidget());
  }

  _bodyWidget() {
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: _isSliverAppBarExpanded
                ? Text(
                    widget.treatment.title,
                    style: TextStyle(color: _textColor),
                  )
                : null,
            leading: GestureDetector(
              onTap: () =>
                  context.goNamed(AppRouteConstants.bottomBarRoute.name),
              child: Container(
                decoration: BoxDecoration(
                  color: _isSliverAppBarExpanded
                      ? AppColor.primary.withAlpha(150)
                      : Colors.black45,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.chevron_left, color: Colors.white, size: 40),
              ),
            ),
            // actions: [Icon(Icons.access_alarm_rounded)],
            floating: true,
            pinned: true,
            backgroundColor: AppColor.primary,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
            toolbarTextStyle: TextStyle(color: Colors.white, fontSize: 22),
            expandedHeight:
                kExpandedHeight +
                _Constant().heightHeader * 0.5 -
                NumberConstant.basePadding,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: widget.treatment.imageUrl,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: _boxHeader(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ];
      },
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: NumberConstant.basePaddingLarge,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: NumberConstant.basePadding,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _Constant().redeemTreatment,
                                  style: TextStyle(
                                    color: AppColor.textHint,
                                    fontSize: 14,
                                    decorationColor: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '${widget.treatment.point} ${_Constant().point}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    decorationColor: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        VerticalDivider(color: AppColor.disable),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: NumberConstant.basePadding,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _Constant().endDate,
                                  style: TextStyle(
                                    color: AppColor.textHint,
                                    fontSize: 14,
                                    decorationColor: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  getEndDateOfYear(),
                                  style: TextStyle(
                                    color: AppColor.text,
                                    fontSize: 16,
                                    decorationColor: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: NumberConstant.basePadding,
                    thickness: NumberConstant.basePadding,
                    color: AppColor.disable,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: NumberConstant.basePaddingLarge,
                    ),
                    child: Text(
                      widget.treatment.content,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decorationColor: Colors.white,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 4,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      NumberConstant.basePaddingLarge,
                    ),
                    child: Text(
                      widget.treatment.content,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decorationColor: Colors.white,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 4,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      NumberConstant.basePaddingLarge,
                    ),
                    child: Text(
                      widget.treatment.content,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decorationColor: Colors.white,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 4,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: AppColor.disable)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: NumberConstant.basePaddingLarge,
                right: NumberConstant.basePaddingLarge,
                top: NumberConstant.basePadding,
                bottom: NumberConstant.basePaddingLarge * 2,
              ),
              child: CustomElevatedButton(
                buttonText: _Constant().redeemTreatment,
                color: AppColor.blue,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return _bottomSheet(context);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  _boxHeader(BuildContext context) {
    return Container(
      height: _Constant().heightHeader * 1.5 + NumberConstant.basePaddingLarge,
      padding: EdgeInsets.symmetric(
        horizontal: NumberConstant.basePaddingLarge,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 2,
            left: 0,
            right: 0,
            child: Container(
              decoration: baseShadowDecoration(),
              height: _Constant().heightHeader,
            ),
          ),
          Positioned(
            bottom: NumberConstant.basePaddingLarge,
            left: 0,
            right: 0,
            child: Column(
              spacing: NumberConstant.basePadding,
              children: [
                Container(
                  width: _Constant().heightHeader - NumberConstant.basePadding,
                  height: _Constant().heightHeader - NumberConstant.basePadding,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [baseShadow()],
                  ),
                  child: Icon(
                    Icons.person_outline,
                    size: 60,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  widget.treatment.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decorationColor: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _bottomSheet(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: NumberConstant.basePaddingLarge,
          right: NumberConstant.basePaddingLarge,
          top: NumberConstant.basePaddingLarge,
        ),
        child: Wrap(
          spacing: 30,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: NumberConstant.basePadding,
              ),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.close,
                      color: AppColor.textSecondary,
                      size: 30,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _Constant().redeemTreatment,
                        style: TextStyle(
                          color: AppColor.text,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: AppColor.disable),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: NumberConstant.basePadding,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _Constant().yourPoint,
                    style: TextStyle(color: AppColor.text, fontSize: 16),
                  ),
                  Container(
                    padding: EdgeInsets.all(NumberConstant.basePadding),
                    decoration: BoxDecoration(
                      color: AppColor.disable,
                      borderRadius: BorderRadius.circular(50),
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
                          '${'50'}',
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
            Divider(color: AppColor.disable),
            Row(
              spacing: NumberConstant.basePaddingLarge,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    widget.treatment.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColor.text,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '${'50'} ${_Constant().point}',
                  style: TextStyle(color: AppColor.textSecondary, fontSize: 16),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Row(
                spacing: NumberConstant.basePaddingLarge,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _Constant().quantity,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: AppColor.text, fontSize: 16),
                  ),
                  Text(
                    '${'1'}',
                    style: TextStyle(
                      color: AppColor.textSecondary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: AppColor.disable),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Row(
                spacing: NumberConstant.basePaddingLarge,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _Constant().total,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: AppColor.text, fontSize: 16),
                  ),
                  Text(
                    '${'50'} ${_Constant().point}',
                    style: TextStyle(
                      color: AppColor.textSecondary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            // Add more widgets as needed
            CustomElevatedButton(
              buttonText: _Constant().confirm,
              color: AppColor.green,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
