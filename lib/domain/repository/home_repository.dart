import 'package:dartz/dartz.dart';
import 'package:redplus_ft/domain/model/banner.dart';

import '../../app/common/common.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BannerModel>>> fetchBanner();
  Future<Either<Failure, List<BannerModel>>> fetchHot();
  Future<Either<Failure, bool>> fetchDeal();
  Future<Either<Failure, bool>> fetchBrand();
}