import 'package:mobx/mobx.dart';
import 'package:testando_mobx_3/models/client.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "este campo é obrigatorio";
    }

    return null;
  }

    String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "este campo é obrigatorio";
    }

    return null;
  }

  @computed
  bool get isValid{
    return validateName() == null && validateEmail() == null;
  }
  
  dispose(){
    
  }

}
