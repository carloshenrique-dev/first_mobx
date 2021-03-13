import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';
part 'email_store.g.dart';

class EmailStore = _EmailStoreBase with _$EmailStore;

abstract class _EmailStoreBase with Store {
  @observable
  bool buttonEnabled = false;

  @observable
  bool password = false;

  @action
  void changeEmail(value) {
    print(value);
    buttonEnabled = EmailValidator.validate(value);
  }

  @action
  validatePassword(senha) {
    print(password);
    if (senha.length == 0) {
      password = false;
    } else if (senha.length > 0 && senha.length < 8) {
      password = false;
    } else {
      password = true;
    }
  }
}
