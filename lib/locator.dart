import 'package:guestchannel/service/dialog_service.dart';
import 'package:get_it/get_it.dart';
import 'package:guestchannel/utils/customFunctions.dart';

//Instead of creating instance of an Object, Multiple times
//Dependency inject solve it by creating this code.

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => DialogService());
   locator.registerLazySingleton(() => CustomFuntion());
}