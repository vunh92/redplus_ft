import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/domain/model/brand.dart';
import 'package:redplus_ft/presentation/views/search/cubit/search_brand_cubit.dart';

import '../../../app/common/common.dart';
import '../../../app/config/config.dart';
import '../home/widgets/deal_widget.dart';

class _Constant {
  String label = 'Thương hiệu';
  double heightAppBar = 40;
  String all = 'Tất cả';
  String area = 'Khu vực';
  String brand = 'Thương hiệu';
  String selected = 'Đã chọn';
}

class SearchBrandScreen extends StatefulWidget {
  const SearchBrandScreen({super.key});

  @override
  State<SearchBrandScreen> createState() => _SearchBrandScreenState();
}

class _SearchBrandScreenState extends State<SearchBrandScreen> {
  @override
  void initState() {
    checkLocationPermission();
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
                  Container(
                    height: 60,
                    decoration: baseBorderDecoration(),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(
                                NumberConstant.basePadding,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _Constant().area,
                                        style: TextStyle(
                                          color: AppColor.textHint,
                                        ),
                                      ),
                                      Text(_Constant().all),
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
                                context
                                    .read<SearchBrandCubit>()
                                    .initSelectBrand(
                                      result as List<BrandModel>,
                                    );
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(
                                NumberConstant.basePadding,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _Constant().brand,
                                        style: TextStyle(
                                          color: AppColor.textHint,
                                          fontSize: 11,
                                        ),
                                      ),
                                      state.listBrandSearch.isNotEmpty
                                          ? Text(
                                              '${_Constant().selected} (${state.listBrandSearch.length})',
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
                  ),
                  Expanded(child: _bodyWidget()),
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
              padding: EdgeInsets.symmetric(
                horizontal: NumberConstant.basePadding,
              ),
              decoration: baseBorderDecoration(
                backgroundColor: AppColor.disable,
              ),
              child: Row(
                children: [
                  Text(
                    _Constant().label,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _bodyWidget() {
    return Container(
      color: Color(0xffeeeeee),
      padding: EdgeInsets.all(NumberConstant.basePadding),
      child: SingleChildScrollView(child: Column(children: [DealWidget()])),
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
