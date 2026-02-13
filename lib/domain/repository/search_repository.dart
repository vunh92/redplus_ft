import 'package:dartz/dartz.dart';
import 'package:redplus_ft/domain/model/brand_detail.dart';

import '../../app/common/common.dart';
import '../model/brand.dart';
import '../model/district.dart';
import '../model/treatment.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<BrandDetailModel>>> filterBrand({
    required List<BrandModel> listBrand,
    required List<DistrictModel> listDistrict,
  });
  Future<Either<Failure, List<BrandDetailModel>>> searchBrand({
    required String search,
  });
}