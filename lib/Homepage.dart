import 'package:flutter/material.dart';
import 'package:toodoo/edit%20task.dart';
import 'package:toodoo/mytask.dart';
import 'package:toodoo/newtask.dart';

class Homepg extends StatefulWidget {
  const Homepg({Key? key}) : super(key: key);

  @override
  State<Homepg> createState() => _HomepgState();
}
class _HomepgState extends State<Homepg> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("HOMEPAGE",style: TextStyle(color: Colors.cyan),),
      centerTitle: true,
      ),
      body:
      ListView(
        children: [
          ListTile(
          leading: Text("TODAYS TASK",style: TextStyle(color: Colors.cyan,fontSize: 18,fontWeight: FontWeight.bold ),),
            trailing: Text("see all"),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(decoration: BoxDecoration(
            border: Border.all(color: Colors.black87,width: 2),
            borderRadius: BorderRadius.circular(15)
            ),
              child: ListTile(
                title: Text("UI DESIGN"),
                leading: Icon(Icons.settings,color: Colors.cyan,),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.cyan,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.black87,width: 2),
              borderRadius: BorderRadius.circular(15)
            ),
              child: ListTile(
                title: Text("UI DESIGN"),
                leading: Icon(Icons.settings,color: Colors.cyan,),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.cyan,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.black87,width: 2),
              borderRadius: BorderRadius.circular(15)
            ),
              child: ListTile(
                title: Text("UI DESIGN"),
                leading: Icon(Icons.settings,color: Colors.cyan,),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.cyan,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(decoration: BoxDecoration(
              border: Border.all(color:Colors.black87,width: 2),
              borderRadius: BorderRadius.circular(15)
            ),
              child: ListTile(
                title: Text("UI DESIGN"),
                leading: Icon(Icons.settings,color: Colors.cyan,),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.cyan,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.black87,width: 2),
              borderRadius: BorderRadius.circular(15)
            ),
              child: ListTile(
                title: Text("UI DESIGN"),
                leading: Icon(Icons.settings,color: Colors.cyan,),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.cyan,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.black87,width: 2),
              borderRadius: BorderRadius.circular(15)
            ),
              child: ListTile(
                title: Text("UI DESIGN"),
                leading: Icon(Icons.settings,color: Colors.cyan,),
                trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.cyan,),
              ),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan.shade900,
        onPressed:(){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Newtask()));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,


      );
  }
}

