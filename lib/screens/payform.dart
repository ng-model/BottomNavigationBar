import 'package:flutter/material.dart';
import 'package:validate/validate.dart';

class PayformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: MyCustomForm(),
    );
  }
}


class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _MyCustomFormState extends State<MyCustomForm> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final myController = TextEditingController();
_LoginData _data = new _LoginData();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

String _validateEmail(String value) {
    try {
      Validate.isEmail(value);
    } catch (e) {
      return 'The E-mail Address must be a valid email address.';
    }

    return null;
  }

  String _validatePassword(String value) {
    if (value.length < 8) {
      return 'The Password must be at least 8 characters.';
    }

    return null;
  }

void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the login data.');
      print('Email: ${_data.email}');
      print('Password: ${_data.password}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail Address'
                ),
                validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.email = value;
                }
              ),
              new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail Address'
                ),
                validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.email = value;
                }
              ),
              new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail Address'
                ),
                validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.email = value;
                }
              ),
              new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail Address'
                ),
                validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.email = value;
                }
              ),
              new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration: new InputDecoration(
                  // hintText: 'Password',
                  labelText: 'Enter your password'
                ),
                validator: this._validatePassword,
                onSaved: (String value) {
                  this._data.password = value;
                }
              ),
              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  child: new Text(
                    'Login',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: this.submit,
                  color: Colors.blue,
                ),
                margin: new EdgeInsets.only(
                  top: 20.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
