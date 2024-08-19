import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formkey = GlobalKey<FormState>();
  final _firstNameCtrl = TextEditingController();
  final _lastNameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmPasswordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _firstNameCtrl,
                decoration: const InputDecoration(
                  labelText: ' First Name ',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
                validator: (value){
                  if(value ==null || value.isEmpty){
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _lastNameCtrl,
                decoration: const InputDecoration(
                  labelText: ' Last Name ',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
                validator: (value){
                  if(value ==null || value.isEmpty){
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _emailCtrl,
                decoration: const InputDecoration(
                  labelText: ' Email ',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value){
                  if(value ==null || value.isEmpty){
                    return 'Please enter your Email ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _passwordCtrl,
                decoration: const InputDecoration(
                  labelText: ' Password ',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                validator: (value){
                  if(value ==null || value.isEmpty){
                    return 'Please enter your Password ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _confirmPasswordCtrl,
                decoration: const InputDecoration(
                  labelText: ' Confirm Password ',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                validator: (value){
                  if(value ==null || value.isEmpty){
                    return 'Please Confirm your Password ';
                  }
                  if(value!=_passwordCtrl.text){
                    return 'Password do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(_formkey.currentState?.validate() ?? false){
                  String first_name = _firstNameCtrl.text;
                  String last_name = _lastNameCtrl.text;
                  String email = _emailCtrl.text;
                  String password = _passwordCtrl.text;
                  print('First name : $first_name');
                  print('Last name : $last_name');
                  print('Email : $email');
                  print(' Password : $password');
                }
              }, 
              child:const Text('Register'))
            ],
          ),
        ),
      ),
    );
  }
}
