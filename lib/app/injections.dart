import 'package:get_it/get_it.dart';

import 'app_router.dart';

final get_it = GetIt.instance;

Future<void> setup() async {
  get_it.registerSingleton<AppRouter>(AppRouter());
}