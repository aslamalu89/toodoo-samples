import 'package:flutter/material.dart';
import 'package:toodoo/Homepage.dart';
import 'package:toodoo/bottom.dart';
import 'package:toodoo/forgetpassword.dart';

class Loginpg extends StatefulWidget {
  const Loginpg({Key? key}) : super(key: key);

  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formkey,
          child: Container(
            height: 390,
            width: 330,
            color: Colors.tealAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                  child: Text(
                    "TODO",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontFamily: "railway",
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 280,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                      keyboardType: TextInputType.emailAddress,

                      validator: (value){
                        if(value==null|| value.isEmpty)
                        {return "please enter ypur email id ";}
                        final emailRegex =
                        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");{
                          if( !emailRegex.hasMatch(value)){
                            return"enter the correct email";
                          }
                          return null;
                        }
                      }

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 50,
                    width: 280,
                    color: Colors.white,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password",
                      ),
                        obscureText:true,
                        validator:(val){
                          if(val!.isEmpty){
                            return "password cannot be Empty";

                          }
                          else if(val.length<4){
                            return "password must be atleast 4 characters long";
                          }
                          return null;
                        },
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Forget()));

                  },
                  child: Text("Forget Password?"),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if(formkey.currentState!.validate()){
                      debugPrint("all validation pressed");
                    }
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Bottom()));

                  },
                  child: Text("Login"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(onPressed: () {}, child: Text("Sign up")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

