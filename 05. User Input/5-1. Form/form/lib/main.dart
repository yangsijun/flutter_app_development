import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeFormd(),
    );
  }
}

class PracticeFormd extends StatefulWidget {
  @override
  State<PracticeFormd> createState() => _PracticeFormState();
}

class _PracticeFormState extends State<PracticeFormd> {

  // Set 2 TextEditingControllers
  final TextEditingController idController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Set GlobalKey name _formKey as FormState
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Form'),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Set TextFormField for id
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Write your id',
                        icon: Icon(Icons.account_circle),
                      ),
                      controller: idController,

	                    // Set validator
                      validator: (String? value) {
                        return value!.isEmpty ? 'write your id' : null;
                      },
                    ),

                    // Set TextFormField for password
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Write your password',
                        icon: Icon(Icons.lock),
                      ),
                      controller: passwordController,

	                    // Set obscureText as true
                      obscureText: true,

											// Set validator
                      validator: (String? value) {
                        return value!.length < 6 ? 'write more than 6 letters' : null;
                      },
                    ),

                    // Set ElevatedButton
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}
