import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PracticeValidator(),
    );
  }
}

class PracticeValidator extends StatefulWidget {
  @override
  State<PracticeValidator> createState() => _PracticeValidatorState();
}

class _PracticeValidatorState extends State<PracticeValidator> {

  // Set 5 TextEditingControllers
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController ageController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmPasswordController = new TextEditingController();
  

  // Set GlobalKey name _formKey as FormState
  final _formKey = GlobalKey<FormState>();

  String text = 'Check your validation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Practice Validator'),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text, style: TextStyle(fontSize: 25),),
                    const SizedBox(height: 10,),

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Write your name',
                          icon: Icon(Icons.account_circle)
                      ),
                      controller: nameController,

                      // Set validator
                      validator: (String? value) {
                        return value!.isEmpty ? 'Write your name' : null;
                      },

                    ),


                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Write your age',
                          icon: Icon(Icons.account_circle)
                      ),
                      controller: ageController,

                      // Set validator
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Write your age';
                        } else if (num.tryParse(value) == null) {
                          return 'Write your age in number';
                        } else {
                          return null;
                        }
                      },

                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Write your email',
                          icon: Icon(Icons.email)
                      ),
                      controller: emailController,

                      // Set validator
                      validator: (String? value) {
                        return !RegExp(r"^[a-zA-z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!) ? 'Write email form' : null;
                      },

                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Write your password',
                          icon: Icon(Icons.lock)
                      ),
                      controller: passwordController,
                      obscureText: true,

                      // Set validator
                      validator: (String? value) {
                        return !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$').hasMatch(value!) ? 'Write at least one upper, lower case, and digit' : null;
                      },

                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Write your confirm password',
                          icon: Icon(Icons.lock)
                      ),
                      controller: confirmPasswordController,
                      obscureText: true,

                      // Set validator
                      validator: (String? value) {
                        if (value!.isEmpty || value != passwordController.text) {
                          return 'Check your confirm password';
                        }
                      },

                    ),

                    const SizedBox(height: 10,),

                    ElevatedButton(
                        onPressed: () {
                          
													// Check if formKey's state is validate
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              text = 'Well Done!';
                            });
                          }

                        },
                        child: Text('Check')
                    ),

                  ],
                ),
              ),
            )
        )
    );
  }
}
