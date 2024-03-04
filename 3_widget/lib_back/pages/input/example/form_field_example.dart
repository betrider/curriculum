// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class FormFieldExample extends StatefulWidget {
  const FormFieldExample({super.key});

  @override
  FormFieldExampleState createState() {
    return FormFieldExampleState();
  }
}

class FormFieldExampleState extends State<FormFieldExample> {
  final _formKey = GlobalKey<FormState>();
  final _formFieldKey1 = GlobalKey<FormFieldState>();
  final _formFieldKey2 = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              key: _formFieldKey1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '입력해주세요',
              ),
              onChanged: (value) {
                if (_formFieldKey1.currentState!.validate()) {
                  _formFieldKey1.currentState!.save();
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (value) {
                print('onSaved1:$value');
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              key: _formFieldKey2,
              onChanged: (value) {
                _formFieldKey2.currentState!.validate();
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (value) {
                print('onSaved2:$value');
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
