import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Edittask extends StatefulWidget {
  const Edittask({Key? key}) : super(key: key);

  @override
  State<Edittask> createState() => _EdittaskState();
}

class _EdittaskState extends State<Edittask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit task",style: TextStyle(color: Colors.cyan.shade900,),),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body:  SingleChildScrollView(
            child:Column(

                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Task name",style: TextStyle(color: Colors.cyan.shade900, fontSize: 15.0,fontWeight: FontWeight.bold ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        labelText: "Name",


                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Date & Time",style: TextStyle(color: Colors.cyan.shade900, fontSize: 15.0, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        labelText: "Date & Time",


                      ),
                    ),
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Description",style: TextStyle(color: Colors.cyan.shade900, fontSize: 15.0, fontWeight: FontWeight.bold),),

                      ]
                  ),

                  Padding(
                    padding: EdgeInsets.all(10),

                    child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),



                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  new SizedBox(
                    width: 330.0,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text('Create Task'),
                      onPressed: (){

                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.cyan),
                    ),
                  ),



                ]
            )
        )
    );
  }
}
