import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:hive/hive.dart';
import 'package:hive_database/model/group_model.dart';
import 'package:hive_flutter/adapters.dart';

class DbHelper {
  static DbHelper dbhelper = DbHelper._();
  DbHelper._();

  var box = Hive.box<GroupModel>("group");
  var cbox = Hive.box<ContactModel>("contact");


  Future<void> addData() async {
    ContactModel cm =ContactModel(name: "Ayush",model: "704663253");
    await cbox.add(cm);

    GroupModel groupModel = GroupModel(
      name: "Friends",
      date: "25/05/2023",
    );
    await box.add(groupModel);


    groupModel.contactList= HiveList(cbox);
    groupModel.contactList!.add(cm);
    print(groupModel.contactList);

  }

  Future<void> addContactWithGroup(GroupModel gm,ContactModel cm ,index) async {

    gm.contactList= HiveList(cbox);
    gm.contactList!.add(cm);
    await cbox.add(cm);
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
