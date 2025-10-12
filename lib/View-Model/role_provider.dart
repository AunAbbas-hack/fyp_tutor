import 'package:flutter/foundation.dart';

class RoleProvier with ChangeNotifier{
String? _role;
String? get selectedrole=>_role;
set role(String? val){
  _role=val;
  notifyListeners();
}
void clear(){
  _role=null;
  notifyListeners();
}
}