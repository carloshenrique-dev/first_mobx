// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailStore on _EmailStoreBase, Store {
  final _$buttonEnabledAtom = Atom(name: '_EmailStoreBase.buttonEnabled');

  @override
  bool get buttonEnabled {
    _$buttonEnabledAtom.reportRead();
    return super.buttonEnabled;
  }

  @override
  set buttonEnabled(bool value) {
    _$buttonEnabledAtom.reportWrite(value, super.buttonEnabled, () {
      super.buttonEnabled = value;
    });
  }

  final _$passwordAtom = Atom(name: '_EmailStoreBase.password');

  @override
  bool get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(bool value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_EmailStoreBaseActionController =
      ActionController(name: '_EmailStoreBase');

  @override
  void changeEmail(dynamic value) {
    final _$actionInfo = _$_EmailStoreBaseActionController.startAction(
        name: '_EmailStoreBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_EmailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validatePassword(dynamic senha) {
    final _$actionInfo = _$_EmailStoreBaseActionController.startAction(
        name: '_EmailStoreBase.validatePassword');
    try {
      return super.validatePassword(senha);
    } finally {
      _$_EmailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
buttonEnabled: ${buttonEnabled},
password: ${password}
    ''';
  }
}
