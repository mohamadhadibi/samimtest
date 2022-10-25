import 'package:get_it/get_it.dart';

import 'di_bloc_module.dart';
import 'di_data_source_module.dart';
import 'di_external_module.dart';
import 'di_repository_module.dart';
import 'di_usecase_module.dart';

final get = GetIt.instance;

init() async {
  // external :
  getExternal();

  // bloc :
  getBloc();

  // use cases :
  getUseCase();

  // repository :
  getRepository();

  // data source
  getDataSource();
}
