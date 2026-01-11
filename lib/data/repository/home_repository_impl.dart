import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/data/mock/mock_banner.dart';
import 'package:redplus_ft/data/mock/mock_deal.dart';
import 'package:redplus_ft/domain/model/banner.dart';
import 'package:uuid/uuid.dart';

import '../../app/common/common.dart';
import '../../domain/model/deal.dart';
import '../../domain/repository/home_repository.dart';
import '../data_source/load_json_assets.dart';
import '../network/home_api.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeApi _homeApi;

  HomeRepositoryImpl(this._homeApi);

  @override
  Future<Either<Failure, List<BannerModel>>> fetchBanner() async {
    try {
      final http.Response res = await _homeApi.fetchBanner();
      await Future.delayed(Duration(milliseconds: 500));
      // final list =
      //     await loadJsonArrayFromAssets('assets/jsons/banner.json')
      //         as List<Banner>;
      final listBanner = MockBanner().getListBanner();
      return Right(listBanner);
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BannerModel>>> fetchHot() async {
    try {
      final http.Response res = await _homeApi.fetchHot();
      await Future.delayed(Duration(milliseconds: 500));
      final listBanner = MockBanner().getListBanner();
      return Right(listBanner);
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DealModel>>> fetchDeal() async {
    try {
      final http.Response res = await _homeApi.fetchHot();
      await Future.delayed(Duration(milliseconds: 500));
      final listDeal = MockDeal().getListDeal();
      return Right(listDeal);
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> fetchBrand() async {
    // final http.Response res = await _homeApi.fetchBrand();
    final list = await loadJsonAssets('assets/jsons/brand.json');
    return Right(true);
  }
}
