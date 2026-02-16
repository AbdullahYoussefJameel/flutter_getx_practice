import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';

class SuperMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  /// كلما زاد الرقم قل الاهميه
  bool myvar = true;
  @override
  RouteSettings? redirect(String? route) {
    if (myvar == true) return RouteSettings(name: "/Super");
  }
}
