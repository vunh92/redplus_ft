import 'package:injectable/injectable.dart';
import '../../../../app/cubit/base_cubit.dart';

part 'scan_state.dart';

@Injectable()
class ScanCubit extends BaseCubit {
  ScanCubit() : super(ScanInitial());
}
