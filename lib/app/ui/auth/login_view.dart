import 'package:first_mobx/app/stores/email_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailStore = EmailStore();
    void _nextStep() {
      print("ativado");
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 60),
                  child: TextField(
                    onChanged: emailStore.changeEmail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 60),
                  child: TextField(
                    onChanged: emailStore.validatePassword,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 60),
                  child: Observer(builder: (_) {
                    return ElevatedButton(
                        onPressed: emailStore.buttonEnabled ? _nextStep : null,
                        child: Text('Email'));
                  }),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 60),
                  child: Observer(
                    builder: (_) {
                      return ElevatedButton(
                          onPressed: emailStore.password ? _nextStep : null,
                          child: Text('Senha'));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
