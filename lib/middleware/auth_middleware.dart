<<<<<<< HEAD
<<<<<<< HEAD
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:getx/main.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 2; // كلما زاد الرقم قل الاهميه
  bool myvar = true;
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPrefrences!.getString("role") == "user")
      return RouteSettings(name: "/home");
    if (sharedPrefrences!.getString("role") == 'admin')
      return RouteSettings(name: "/admin");
    if (myvar == true) return RouteSettings(name: "/home");
  }
}
=======
=======
>>>>>>> origin/master
// import 'package:flutter/widgets.dart';
// import 'package:get/route_manager.dart';
// import 'package:getx/main.dart';

// class AuthMiddleware extends GetMiddleware {
//   @override
//   int? get priority => 2; // كلما زاد الرقم قل الاهميه
//   bool myvar = true;
//   @override
//   RouteSettings? redirect(String? route) {
//     if (sharedPrefrences!.getString("role") == "user")
//       return RouteSettings(name: "/home");
//     if (sharedPrefrences!.getString("role") == 'admin')
//       return RouteSettings(name: "/admin");
//     if (myvar == true) return RouteSettings(name: "/home");
//   }
// }
<<<<<<< HEAD
>>>>>>> ee7bd5a (feat: implement persistent counter service using GetxService and SharedPreferences)
=======
>>>>>>> origin/master
