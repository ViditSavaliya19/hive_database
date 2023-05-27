import 'package:flutter/material.dart';
import 'package:hive_database/utils/db_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    DbHelper.dbhelper.initDB();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                DbHelper.dbhelper.addData();
              }, child: const Text("Add Data")),
              ElevatedButton(onPressed: (){
                DbHelper.dbhelper.readData();
              }, child: const Text("Read")),
            ],
          ),
        ),
      ),
    );
  }
}
