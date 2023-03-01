
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:samplelfir/authee/authendication.dart';

import 'home.dart';

Future <void> main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: Firehome()));
}

class Firehome extends StatefulWidget {
  const Firehome({Key? key}) : super(key: key);

  @override
  State<Firehome> createState() => _FirehomeState();
}

class _FirehomeState extends State<Firehome> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final pass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value){
                  if (value!.isEmpty){
                    return 'plaease enter';
                  }
                  return null;
                },
                onSaved: (val){
                  email =val;
                },
              ),
              TextFormField(
                  onSaved: (val){
                    password = val;
                  },
                  validator: (value){
                    if (value!.isEmpty){
                      return 'please enter value';
                    }
                    return null;
                  }
              ),
              ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()){
                  _formKey.currentState!.save();
                  AuthendicationHelper()
                      .signUp(email: email!, password: password!)
                      .then((result){
                    if (result == null){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage(),));
                    }
                  });
                }
              }, child: Text("Register")),
            ],
          )),
    );
  }
}
