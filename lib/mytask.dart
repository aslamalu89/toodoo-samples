import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toodoo/edit%20task.dart';
import 'package:toodoo/newtask.dart';

class Mytask extends StatefulWidget {
  const Mytask({Key? key}) : super(key: key);

  @override
  State<Mytask> createState() => _MytaskState();
}

class _MytaskState extends State<Mytask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        title: Text("My Task",style: TextStyle(color: Colors.cyan.shade900,),
        ),
        centerTitle: true,

      ),
      bottomNavigationBar: BottomNavigationBar(items:
      [
        BottomNavigationBarItem(icon:Icon(Icons.home_outlined,color: Colors.cyan.shade900,),
            label: ''),
        BottomNavigationBarItem(icon:Icon(Icons.calendar_month_outlined,color: Colors.cyan.shade900,),
            label: 'calender'),
        BottomNavigationBarItem(icon:Icon(Icons.messenger_outline,color:Colors.cyan.shade900,),
            label: 'message'),
        BottomNavigationBarItem(icon:Icon(Icons.person_outline,color:Colors.cyan.shade900,),
            label: 'person'),

      ]),
      body:ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("UI Design"),
                leading: Icon(Icons.settings,color: Colors.cyan.shade900,),
                trailing:Wrap(
                  spacing:12,
                  children:[
                    IconButton(onPressed: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Edittask()));

                    }, icon:Icon(Icons.edit,color: Colors.cyan.shade900,),),
                    IconButton(onPressed: (){


                    }, icon:Icon(Icons.delete,color: Colors.cyan.shade900,),),



                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("UI Design"),
                leading: Icon(Icons.settings,color: Colors.cyan.shade900,),
                trailing:Wrap(
                  spacing:12,
                  children:[
                    IconButton(onPressed: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Edittask()));

                    }, icon:Icon(Icons.edit,color: Colors.cyan.shade900,),),
                    IconButton(onPressed: (){


                    }, icon:Icon(Icons.delete,color: Colors.cyan.shade900,),),



                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("UI Design"),
                leading: Icon(Icons.settings,color: Colors.cyan.shade900,),
                trailing:Wrap(
                  spacing:12,
                  children:[
                    IconButton(onPressed: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Edittask()));

                    }, icon:Icon(Icons.edit,color: Colors.cyan.shade900,),),
                    IconButton(onPressed: (){


                    }, icon:Icon(Icons.delete,color: Colors.cyan.shade900,),),



                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("UI Design"),
                leading: Icon(Icons.settings,color: Colors.cyan.shade900,),
                trailing:Wrap(
                  spacing:12,
                  children:[
                    IconButton(onPressed: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Edittask()));

                    }, icon:Icon(Icons.edit,color: Colors.cyan.shade900,),),
                    IconButton(onPressed: (){


                    }, icon:Icon(Icons.delete,color: Colors.cyan.shade900,),),



                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("UI Design"),
                leading: Icon(Icons.settings,color: Colors.cyan.shade900,),
                trailing:Wrap(
                  spacing:12,
                  children:[
                    IconButton(onPressed: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Edittask()));

                    }, icon:Icon(Icons.edit,color: Colors.cyan.shade900,),),
                    IconButton(onPressed: (){


                    }, icon:Icon(Icons.delete,color: Colors.cyan.shade900,),),



                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("UI Design"),
                leading: Icon(Icons.settings,color: Colors.cyan.shade900,),
                trailing:Wrap(
                  spacing:12,
                  children:[
                    IconButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Edittask()));


                    }, icon:Icon(Icons.edit,color: Colors.cyan.shade900,),),
                    IconButton(onPressed: (){


                    }, icon:Icon(Icons.delete,color: Colors.cyan.shade900,),),



                  ],
                ),
              ),
            ),

          ]
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan.shade900,
        onPressed:(){
        },

        child: const Icon(Icons.add),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
