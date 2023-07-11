import 'package:flutter/material.dart';
import 'package:toodoo/Homepage.dart';

class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formkey,
          child: Container(
            height: 500,
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 50,
                    width: 280,
                    color: Colors.white,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Confirm Password",
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
                
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if(formkey.currentState!.validate()){
                      debugPrint("all validation pressed");
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepg()));

                  },
                  child: Text("Login"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("you have already "),
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

