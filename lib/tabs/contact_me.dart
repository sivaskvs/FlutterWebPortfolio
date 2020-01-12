import 'package:sivasubramanian/config/assets.dart';
import 'package:sivasubramanian/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../models/User.dart';

class HomeMaterial extends StatefulWidget {
  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}
class _HomeMaterialState extends State {
  final _formKey = new GlobalKey<FormState>();
  final _user = User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
 Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.00, horizontal: 100.0),
            child: Builder(
                builder: (context) => Form(
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Siva Subramanian L',
                            style: Theme.of(context).textTheme.caption,
                            textScaleFactor: 2,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'sivasubramanian96@gmail.com\n+353-894911437',
                            style: Theme.of(context).textTheme.caption,
                            textScaleFactor: 1,
                            textAlign: TextAlign.center,
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'First name'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your first name';
                              }
                            },
                            onSaved: (val) =>
                                setState(() => _user.firstName = val),
                          ),
                          TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Last name'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your last name.';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.lastName = val)),
                          TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Mobile Number'),
                              onSaved: (val) =>
                                  setState(() => _user.mobileNum = val)),
                          TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Email Id'),
                              validator: (value) {
                                bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                                if (value.isEmpty) {
                                  return 'Please enter your email id';
                                } 
                                else if(!emailValid){
                                  return 'Please enter valid email id';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.emailId = val)),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text('Message'),
                          ),
                          TextFormField(
                              onSaved: (val) =>
                                  setState(() => _user.message = val)),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0),
                              child: RaisedButton(
                                  onPressed: () {
                                    final form = _formKey.currentState;
                                    if (form.validate()) {
                                      form.save();
                                      _user.save();
                                      _showDialog(context);
                                      // form.reset();
                                    }
                                  },
                                  child: Text('Save'))),
                        ]))))

            ])))) 
       );
  }
  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}