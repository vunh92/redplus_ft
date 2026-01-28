import 'package:dartz/dartz.dart';
import 'package:redplus_ft/domain/model/banner.dart';

import '../../app/common/common.dart';
import '../model/deal.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BannerModel>>> fetchBanner();
  Future<Either<Failure, List<BannerModel>>> fetchHot();
  Future<Either<Failure, List<DealModel>>> fetchDeal();
  Future<Either<Failure, List<BannerModel>>> fetchNews(int page, int limit);
}