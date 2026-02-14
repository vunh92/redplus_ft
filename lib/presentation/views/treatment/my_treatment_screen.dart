import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/domain/model/my_treatment.dart';

import '../../../di/di.dart';
import 'cubit/my_treatment_cubit.dart';

class _Constant {
  double heightTab = 60.0;

  String myTreatment = 'Ưu đãi của tôi';
  String tabNew = 'Mới';
  String tabExpired = 'Hết hiệu lực';
  String noTreatment = 'Bạn chưa có ưu đãi nào';
  String exploreNewestTreatment = 'Khám phá ưu đãi mới nhất';
  String code = 'Mã';
  String expired = 'HSD';
  String useNow = 'Dùng ngay';
  String expiredDate = 'Hết hạn';
}

class MyTreatmentScreen extends StatefulWidget {
  const MyTreatmentScreen({super.key});

  @override
  State<MyTreatmentScreen> createState() => _MyTreatmentScreenState();
}

class _MyTreatmentScreenState extends State<MyTreatmentScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MyTreatmentCubit>()..fetchTreatment(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(_Constant().myTreatment),
          centerTitle: true,
          backgroundColor: AppColor.primary,
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: BlocConsumer<MyTreatmentCubit, MyTreatmentState>(
          listener: (context, state) {},
          builder: (context, state) {
            return _body(state);
          },
        ),
      ),
    );
  }

  _body(MyTreatmentState state) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            height: _Constant().heightTab,
            color: Color(0XFFF2F2F2),
            child: TabBar(
              dividerColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              unselectedLabelColor: AppColor.textSecondary,
              tabs: [
                Tab(
                  text: '${_Constant().tabNew} (${state.newTreatment.length})',
                ),
                Tab(
                  text:
                      '${_Constant().tabExpired} (${state.expiredTreatment.length})',
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0XFFF2F2F2),
              child: TabBarView(
                children: [
                  _newTab(state),
                  _expiredTab(state),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _newTab(MyTreatmentState state) {
    return Column(
      children: [
        ListView.builder(
          itemCount: state.newTreatment.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return _item(state.newTreatment[index], false);
          },
        ),
        Center(
          child: InkWell(
            onTap: () {
              context.pop();
            },
            child: Text(
              _Constant().exploreNewestTreatment,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _expiredTab(MyTreatmentState state) {
    return Column(
      children: [
        ListView.builder(
          itemCount: state.expiredTreatment.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return _item(state.expiredTreatment[index], true);
          },
        ),
        Center(
          child: InkWell(
            onTap: () {
              context.pop();
            },
            child: Text(
              _Constant().exploreNewestTreatment,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _item(MyTreatment treatment, bool isExpired) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: NumberConstant.basePadding,
        horizontal: NumberConstant.basePaddingLarge,
      ),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(NumberConstant.basePadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: NumberConstant.basePaddingLarge,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  height: 90,
                  width: 90,
                  imageUrl: treatment.imageUrl,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                      child: Text(
                        treatment.title,
                        style: TextStyle(
                          color: AppColor.text,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '${_Constant().code}: ${treatment.code}',
                      style: TextStyle(color: AppColor.textSecondary),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${_Constant().expired}: ${treatment.endDate.trim() != '' ? parseDateString(date: treatment.endDate) : getEndDateOfYear()}',
                          style: TextStyle(color: AppColor.textSecondary),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        isExpired ? InkWell(
                          child: Text(
                            _Constant().expiredDate,
                            style: TextStyle(
                              color: AppColor.textSecondary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ) :
                        InkWell(
                          child: Text(
                            _Constant().useNow,
                            style: TextStyle(
                              color: AppColor.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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
