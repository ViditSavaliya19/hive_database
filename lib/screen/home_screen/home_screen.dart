import 'package:flutter/material.dart';
import 'package:hive_database/model/group_model.dart';
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
    // DbHelper.dbhelper.initDB();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    DbHelper.dbhelper.addData();
                  },
                  child: const Text("Add Data")),
              ElevatedButton(
                  onPressed: () {
                    DbHelper.dbhelper.readData();
                  },
                  child: const Text("Read")),
              ElevatedButton(
                  onPressed: () {
                    DbHelper.dbhelper.readData();
                  },
                  child: const Text("Read")),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: DbHelper.dbhelper.getLiveData(),
                  builder: (context, box, child) {
                    if (box.isEmpty) {
                      return const Text("Empty");
                    } else {
                      // GroupModel? gp= box.getAt(0);
                      return ListView.builder(
                        itemCount: box.length,
                        itemBuilder: (context, index) {
                          var currentBox = box;
                          GroupModel gp = currentBox.getAt(index)!;
                          return InkWell(
                            onTap: () {
                              for (var x in gp.contactList!) {
                                print("======");
                                print("${x.name} ${x.model}");
                                print("======");
                              }
                            },
                            child: ListTile(
                              title: Text("${gp.name}"),
                              subtitle: Text("${gp.date}"),
                              trailing: IconButton(
                                onPressed: () {
                                  DbHelper.dbhelper.updateData(
                                      gp,
                                      ContactModel(
                                          model: "774455663300", name: "www"),
                                      0);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
