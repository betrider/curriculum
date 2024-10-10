import 'package:flutter/material.dart';
import 'package:flutter_custom_widget/components/separated_column.dart';

class TextFieldPage extends StatelessWidget {
  static const routeName = 'text-field';
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButtonPage'),
      ),
      body: Theme(
        data: ThemeData(inputDecorationTheme: const InputDecorationTheme()),
        child: Builder(builder: (context) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: SeparatedColumn(
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildTextField1(),
                  buildTextField2(),
                  buildTextField3(),
                  buildTextField4(),
                  buildTextField5(),
                  buildTextField6(),
                  buildTextField7(),
                  buildTextField8(),
                  buildTextField9(),
                  buildTextField10(),
                  buildTextField11(),
                  buildTextField12(),
                  buildTextField13(),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  TextField buildTextField13() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'with label',
        helperText: 'helper',
        labelText: 'label',
        counterText: 'counter',
      ),
    );
  }

  TextField buildTextField12() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'background color',
        filled: true,
        fillColor: Colors.blue.shade100,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  TextField buildTextField11() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'BorderRadius',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  TextField buildTextField10() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Only underline',
        enabledBorder: UnderlineInputBorder(),
      ),
    );
  }

  TextField buildTextField9() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Border (Colors.green)',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
            width: 1.0,
          ),
        ),
      ),
    );
  }

  TextField buildTextField8() {
    return const TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.star),
        hintText: 'Icon',
      ),
    );
  }

  TextFormField buildTextField7() {
    return TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Enter your username',
      ),
    );
  }

  TextField buildTextField6() {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter a search term',
      ),
    );
  }

  Widget buildTextField1() => TextFormField(
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.person,
            color: Colors.teal,
          ),
          hintText: 'Enter your Name',
          hintStyle: TextStyle(color: Colors.teal)));

  Widget buildTextField2() => TextFormField(
        decoration: const InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
            ),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.orange,
          ),
          hintText: "Enter your Name",
          hintStyle: TextStyle(color: Colors.orange),
        ),
      );

  Widget buildTextField3() => TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          prefixIcon: const Icon(Icons.person, color: Colors.blue),
          hintText: "Enter your Name",
          hintStyle: const TextStyle(color: Colors.blue),
          filled: true,
          fillColor: Colors.blue[50],
        ),
      );

  Widget buildTextField4() => TextFormField(
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.green,
          ),
          filled: true,
          fillColor: Colors.green[50],
          labelText: "Enter your Name",
          labelStyle: const TextStyle(color: Colors.green),
        ),
      );

  Widget buildTextField5() => TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(5.5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.red,
          ),
          filled: true,
          fillColor: Colors.red[50],
          labelText: "Enter your Name",
          labelStyle: const TextStyle(color: Colors.red),
        ),
      );
}
