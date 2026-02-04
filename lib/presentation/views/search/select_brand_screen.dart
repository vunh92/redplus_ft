import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/presentation/widgets/custom_elevated_button.dart';

import '../../../domain/model/brand.dart';
import 'cubit/select_brand_cubit.dart';

class BrandItem extends Equatable {
  final BrandModel brand;
  final bool isSelected;

  const BrandItem({required this.brand, required this.isSelected});

  String get id => brand.id;
  String get title => brand.title;

  BrandItem copyWith({BrandModel? brand, bool? isSelected}) {
    return BrandItem(
      brand: brand ?? this.brand,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [brand, isSelected];
}

class _Constant {
  String label = 'Thương hiệu';
  String all = 'Tất cả';
  String unSelected = 'Bỏ chọn';
  String apply = 'Áp dụng';
}

class SelectBrandScreen extends StatefulWidget {
  final List<BrandModel> listBrand;

  const SelectBrandScreen({super.key, required this.listBrand});

  @override
  State<SelectBrandScreen> createState() => _SelectBrandScreenState();
}

class _SelectBrandScreenState extends State<SelectBrandScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SelectBrandCubit()..initSelectBrand(widget.listBrand),
      child: BlocConsumer<SelectBrandCubit, SelectBrandState>(
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
                    state.listSelectedBrand
                        .where((element) => element.isSelected)
                        .map((e) => e.brand)
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

  _appBarWidget(BuildContext context, SelectBrandState state) {
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
            context.read<SelectBrandCubit>().selectAllBrand(
              state.listSelectedBrand
                  .where((element) => !element.isSelected)
                  .isNotEmpty,
            );
          },
          child: Text(
            state.listSelectedBrand
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

  _bodyWidget(BuildContext context, SelectBrandState state) {
    return ListView.separated(
      itemCount: state.listSelectedBrand.length,
      padding: EdgeInsets.symmetric(horizontal: NumberConstant.basePadding),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(NumberConstant.basePadding),
          child: _item(
            state.listSelectedBrand[index],
            onTap: () {
              context.read<SelectBrandCubit>().selectBrand(
                state.listSelectedBrand[index],
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

  _item(BrandItem item, {required Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item.title, style: TextStyle(fontSize: 18)),
          item.isSelected
              ? Icon(Icons.check, color: AppColor.green)
              : SizedBox(),
        ],
      ),
    );
  }
}
