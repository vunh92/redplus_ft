import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/presentation/widgets/custom_elevated_button.dart';

import '../../../domain/model/district.dart';
import 'cubit/select_district_cubit.dart';

class DistrictItem extends Equatable {
  final DistrictModel district;
  final bool isSelected;

  const DistrictItem({required this.district, required this.isSelected});

  String get label => district.label;
  String get code => district.code;

  DistrictItem copyWith({DistrictModel? district, bool? isSelected}) {
    return DistrictItem(
      district: district ?? this.district,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [district, isSelected];
}

class _Constant {
  String label = 'Khu vực';
  String all = 'Tất cả';
  String unSelected = 'Bỏ chọn';
  String apply = 'Áp dụng';
}

class SelectDistrictScreen extends StatefulWidget {
  final List<DistrictModel> listDistrict;

  const SelectDistrictScreen({super.key, required this.listDistrict});

  @override
  State<SelectDistrictScreen> createState() => _SelectDistrictScreenState();
}

class _SelectDistrictScreenState extends State<SelectDistrictScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        SelectDistrictCubit()..initSelectDistrict(widget.listDistrict),
      child: BlocConsumer<SelectDistrictCubit, SelectDistrictState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: _appBarWidget(context, state),
            body: _bodyWidget(context, state),
            bottomSheet: Container(
              decoration: baseBorderDecoration(),
              padding: EdgeInsets.all(NumberConstant.basePaddingLarge),
              child: CustomElevatedButton(
                buttonText: _Constant().apply,
                color: AppColor.blue,
                onPressed: () {
                  context.pop(
                    state.listSelectedDistrict
                        .where((element) => element.isSelected)
                        .map((e) => e.district)
                        .toList(),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  _appBarWidget(BuildContext context, SelectDistrictState state) {
    return AppBar(
      title: Text(_Constant().label),
      titleTextStyle: TextStyle(
        color: AppColor.text,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.close_rounded, size: 30),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.read<SelectDistrictCubit>().selectAllDistrict(
              state.listSelectedDistrict
                  .where((element) => !element.isSelected)
                  .isNotEmpty,
            );
          },
          child: Text(
            state.listSelectedDistrict
                    .where((element) => !element.isSelected)
                    .isNotEmpty
                ? _Constant().all
                : _Constant().unSelected,
            style: TextStyle(color: AppColor.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  _bodyWidget(BuildContext context, SelectDistrictState state) {
    return ListView.separated(
      itemCount: state.listSelectedDistrict.length,
      padding: EdgeInsets.symmetric(horizontal: NumberConstant.basePadding),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(NumberConstant.basePadding),
          child: _item(
            state.listSelectedDistrict[index],
            onTap: () {
              context.read<SelectDistrictCubit>().selectDistrict(
                state.listSelectedDistrict[index],
              );
            },
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(color: AppColor.border);
      },
    );
  }

  _item(DistrictItem item, {required Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item.label, style: TextStyle(fontSize: 18)),
          item.isSelected
              ? Icon(Icons.check, color: AppColor.green)
              : SizedBox(),
        ],
      ),
    );
  }
}
