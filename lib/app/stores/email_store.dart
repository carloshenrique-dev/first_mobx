import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';
part 'email_store.g.dart';

class EmailStore = _EmailStoreBase with _$EmailStore;

abstract class _EmailStoreBase with Store {
  @observable
  bool buttonEnabled = false;

  @observable
  bool password = false;

  @observable
  String label = '';

  @computed
  String get status => "$label";

  @action
  void changeEmail(value) {
    print(value);
    buttonEnabled = EmailValidator.validate(value);
  }

  @action
  validatePassword(senha) {
    if (senha.length <= 0) {
      print('aqui');
      password = false;
      label = "Senha nao pode estar vazia";
      print(label);
    } else if (senha.length > 0 && senha.length < 8) {
      print('-8');
      password = false;
      label = "Senha menor que 8 caracteres";
    } else {
      print('validou');
      password = true;
    }
  }

  @action
  validado() {
    if (buttonEnabled == true && password == true) {
      print('tudo ok');
      return true;
    } else {
      print('ainda nao ok');
      return false;
    }
  }
}
