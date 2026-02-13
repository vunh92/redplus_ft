import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/domain/model/brand.dart';
import 'package:redplus_ft/domain/model/district.dart';
import 'package:redplus_ft/presentation/views/search/cubit/search_brand_cubit.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../app/common/common.dart';
import '../../../app/config/config.dart';
import '../../../app/cubit/base_cubit.dart';
import '../../../domain/model/brand_detail.dart';
import 'cubit/brand_detail_cubit.dart';

class _Constant {
  String label = 'Thương hiệu';
  String hintSearch = 'Tìm kiếm nhà hàng...';
  double heightAppBar = 40;
  double heightItem = 150;
  double widthItem = 120;
  String all = 'Tất cả';
  String district = 'Khu vực';
  String brand = 'Thương hiệu';
  String selected = 'Đã chọn';
}

class SearchBrandScreen extends StatefulWidget {
  final BrandModel? brandModel;

  const SearchBrandScreen({super.key, required this.brandModel});

  @override
  State<SearchBrandScreen> createState() => _SearchBrandScreenState();
}

class _SearchBrandScreenState extends State<SearchBrandScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    checkLocationPermission();
    context.read<SearchBrandCubit>().init(brandModel: widget.brandModel);
    context.read<BrandDetailCubit>().filterBrand(
      listBrand: widget.brandModel != null ? [widget.brandModel!] : [],
      listDistrict: [],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: BlocConsumer<SearchBrandCubit, SearchBrandState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Container(
              color: Colors.white,
              child: Column(
                children: [
                  _appBarWidget(),
                  _searchController.text.isNotEmpty
                      ? Container()
                      : _header(state),
                  Expanded(
                    child: _searchController.text.isNotEmpty
                        ? _bodySearch(state)
                        : _body(state),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _appBarWidget() {
    return Padding(
      padding: const EdgeInsets.all(NumberConstant.basePadding),
      child: Row(
        spacing: NumberConstant.basePadding,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: SizedBox(
                height: _Constant().heightAppBar,
                width: _Constant().heightAppBar,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.text,
                  size: 24,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: _Constant().heightAppBar,
              decoration: baseBorderDecoration(),
              padding: EdgeInsets.all(NumberConstant.basePadding),
              child: Center(
                child: TextFormField(
                  controller: _searchController,
                  maxLines: 1,
                  onChanged: (value) {
                    setState(() {});
                    context.read<BrandDetailCubit>().searchBrand(search: value);
                  },
                  autofocus: false,
                  textAlignVertical: TextAlignVertical.center,
                  // keyboardType: TextInputType.phone,
                  // maxLength: _Constant().maxLengthInput,
                  style: TextStyle(
                    // fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: AppColor.text,
                  ),
                  decoration: InputDecoration(
                    hintText: _Constant().hintSearch,
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      // fontSize: 20,
                      // fontWeight: FontWeight.bold,
                      color: AppColor.textHint,
                    ),
                    prefixIcon: Icon(Icons.search, color: AppColor.textHint),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                _searchController.clear();
                              });
                            },
                            child: Icon(Icons.cancel, color: Colors.grey),
                          )
                        : null,
                    counterText: "",
                  ),
                  onTapOutside: (PointerDownEvent event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _header(SearchBrandState state) {
    return Container(
      height: 60,
      decoration: baseBorderDecoration(),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () async {
                final result = await context.pushNamed(
                  AppRouteConstants.selectDistrictScreenRoute.name,
                  extra: state.listDistrict,
                );
                if (result != null) {
                  context.read<SearchBrandCubit>().initSelectDistrict(
                    result as List<DistrictModel>,
                  );
                  context.read<BrandDetailCubit>().filterBrand(
                    listBrand: state.listBrand,
                    listDistrict: result,
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(NumberConstant.basePadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _Constant().district,
                          style: TextStyle(color: AppColor.textHint),
                        ),
                        state.listDistrict.isNotEmpty
                            ? Text(
                                '${_Constant().selected} (${state.listDistrict.length})',
                              )
                            : Text(_Constant().all),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ),
            ),
          ),
          Container(height: 60, width: 1, color: AppColor.border),
          Expanded(
            child: InkWell(
              onTap: () async {
                final result = await context.pushNamed(
                  AppRouteConstants.selectBrandScreenRoute.name,
                  extra: state.listBrand,
                );
                if (result != null) {
                  context.read<SearchBrandCubit>().initSelectBrand(
                    result as List<BrandModel>,
                  );

                  context.read<BrandDetailCubit>().filterBrand(
                    listBrand: result,
                    listDistrict: state.listDistrict,
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(NumberConstant.basePadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _Constant().brand,
                          style: TextStyle(
                            color: AppColor.textHint,
                            fontSize: 11,
                          ),
                        ),
                        state.listBrand.isNotEmpty
                            ? state.listBrand.length == 1
                                  ? Text(state.listBrand.first.title)
                                  : Text(
                                      '${_Constant().selected} (${state.listBrand.length})',
                                    )
                            : Text(_Constant().all),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _bodySearch(SearchBrandState state) {
    return Container(
      color: Color(0xffeeeeee),
      padding: EdgeInsets.all(NumberConstant.basePadding),
      child: BlocConsumer<BrandDetailCubit, BaseState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is SuccessState<List<BrandDetailModel>>) {
            return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: NumberConstant.basePadding,
              ),
              itemCount: state.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(NumberConstant.basePadding),
                  child: _item(
                    state.data[index],
                    onTap: () {
                      context.pushNamed(
                        AppRouteConstants.brandDetailScreenRoute.name,
                        extra: state.data[index],
                      );
                    },
                  ),
                );
              },
            );
          } else {
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
    );
  }

  _body(SearchBrandState searchBrandState) {
    return Container(
      color: Color(0xffeeeeee),
      padding: EdgeInsets.all(NumberConstant.basePadding),
      child: BlocConsumer<BrandDetailCubit, BaseState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is SuccessState<List<BrandDetailModel>>) {
            return ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: NumberConstant.basePadding,
              ),
              itemCount: state.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(NumberConstant.basePadding),
                  child: _item(
                    state.data[index],
                    onTap: () {
                      context.pushNamed(
                        AppRouteConstants.brandDetailScreenRoute.name,
                        extra: state.data[index],
                      );
                    },
                  ),
                );
              },
            );
          } else {
            // context.read<BrandDetailCubit>().filterBrand(
            //   listBrand: searchBrandState.listBrand,
            //   listDistrict: searchBrandState.listDistrict,
            // );
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
    );
  }

  _item(BrandDetailModel brandDetail, {required Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                NumberConstant.baseRadiusBorder,
              ),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                height: _Constant().heightItem,
                width: _Constant().widthItem,
                imageUrl: brandDetail.imageUrl,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Text(
                          brandDetail.title,
                          maxLines: 1,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColor.textSecondary,
                              size: 18,
                            ),
                            Expanded(
                              child: Text(
                                brandDetail.address,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(color: AppColor.textSecondary),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled_sharp,
                              color: AppColor.textSecondary,
                              size: 18,
                            ),
                            Expanded(
                              child: Text(
                                brandDetail.openHour,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(color: AppColor.textSecondary),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.social_distance,
                              color: AppColor.textSecondary,
                              size: 18,
                            ),
                            Expanded(
                              child: Text(
                                '${brandDetail.lat}, ${brandDetail.lng}',
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(color: AppColor.textSecondary),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: AppColor.textSecondary,
                              size: 18,
                            ),
                            Expanded(
                              child: Text(
                                brandDetail.phone,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(color: AppColor.textSecondary),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Row(
                        spacing: NumberConstant.basePadding,
                        children: [
                          InkWell(
                            onTap: () {
                              launchUrlString("tel://${brandDetail.phone}");
                            },
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: AppColor.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 14,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              launchUrlString(brandDetail.link);
                            },
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: AppColor.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<LocationPermission> checkLocationPermission() async {
  LocationPermission permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    // Permissions are denied, next step is to ask for permission.
    print("Location permissions are denied. Requesting...");
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied again (maybe the user clicked "Deny" twice)
      print("Location permissions are permanently denied.");
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are permanently denied.
    print(
      "Location permissions are permanently denied, we cannot request permissions.",
    );
    // You might want to open app settings here
    // await Geolocator.openAppSettings();
    return Future.error('Location permissions are permanently denied');
  }

  // Permissions are granted, proceed to get location or other tasks.
  print("Location permissions are granted.");
  return permission;
}

Future<bool> isLocationServiceEnabled() async {
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are disabled.
    print("Location services are disabled.");
    // Optionally, request the user to enable it
    // await Geolocator.openLocationSettings();
    return false;
  }
  return true;
}
