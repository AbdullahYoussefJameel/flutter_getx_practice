import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/controller/home_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(),
      // fenix: true,
    ); //data that will delete whene you leave thepage
    //Get.put<HomeController>(HomeController(), permanent: true);//data keep in app
  }
}
