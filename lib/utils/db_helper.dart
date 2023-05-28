import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:hive/hive.dart';
import 'package:hive_database/model/group_model.dart';
import 'package:hive_flutter/adapters.dart';

class DbHelper {
  static DbHelper dbhelper = DbHelper._();
  DbHelper._();

  var box = Hive.box("group");
  var cbox = Hive.box("contact");


  Future<void> addData() async {
    GroupModel groupModel = GroupModel(
      name: "Friends",
      date: "25/05/2023",
      contactList: [
        ContactModel(name: "Ayush",model: "704663253"),
        ContactModel(name: "Rashmi",model: "8855221144"),
      ]
    );
    await box.add(groupModel);
  }

  void readData() {

    GroupModel? groupModel = box.get('Friends');
    print(groupModel!.name);
    print(groupModel.date);
    print(groupModel.contactList);
    print(groupModel.expenseList);
  }

  ValueListenable<Box> getLiveData() {
    return box.listenable();
  }

  void updateData(GroupModel gm,ContactModel cm,index)
  {
    cbox.put(gm.contactList![index].name!, cm);
  }
}
