import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CREATE NEW TASK",
          style: TextStyle(color: Colors.cyan),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "TASK NAME",
              hintText: "TASK NAME",
            ),
          ),
          // More TextFormField widgets for different fields
        ],
      ),
    );
  }
}








