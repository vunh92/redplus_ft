import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/data/mock/mock_brand_detail.dart';
import 'package:redplus_ft/domain/model/brand_detail.dart';

import '../../app/common/common.dart';
import '../../domain/model/brand.dart';
import '../../domain/model/district.dart';
import '../../domain/model/treatment.dart';
import '../../domain/repository/search_repository.dart';
import '../../domain/repository/treatment_repository.dart';
import '../mock/mock_treatment.dart';
import '../network/search_api.dart';
import '../network/treatment_api.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl extends SearchRepository {
  final SearchApi _searchApi;

  SearchRepositoryImpl(this._searchApi);

  @override
  Future<Either<Failure, List<BrandDetailModel>>> filterBrand({
    required List<BrandModel> listBrand,
    required List<DistrictModel> listDistrict,
  }) async {
    try {
      final http.Response res = await _searchApi.filterBrand();
      await Future.delayed(Duration(milliseconds: 300));
      var listBrandDetail = MockBrandDetail().mockListBrandDetails.where(
        (d) =>
            (listBrand.isEmpty |
                listBrand.where((brand) => brand.id == d.brandId).isNotEmpty) &&
            (listDistrict.isEmpty | listDistrict
                .where((district) => district.code == d.districtId)
                .isNotEmpty),
      ).toList();
      return Right(listBrandDetail);
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BrandDetailModel>>> searchBrand({required String search}) async {
    try {
      final http.Response res = await _searchApi.filterBrand();
      await Future.delayed(Duration(milliseconds: 300));
      var listBrandDetail = MockBrandDetail().mockListBrandDetails.where(
            (d) => d.title.toLowerCase().contains(search.toLowerCase()),
      ).toList();
      return Right(listBrandDetail);
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }
}
