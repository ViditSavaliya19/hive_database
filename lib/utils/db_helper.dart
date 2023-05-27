import 'package:hive/hive.dart';
import 'package:hive_database/model/group_model.dart';

class DbHelper {
  static DbHelper dbhelper = DbHelper._();

  DbHelper._();

  Box? box;

  Future<void> initDB() async {
    box = await Hive.openBox('group');
  }

  Future<void> addData() async {
    GroupModel groupModel = GroupModel(
      name: "Firends",
      date: "25/05/2023",
    );
    await box!.put("Friends", groupModel);
  }

  void readData() {
    GroupModel? groupModel = box!.get('Friends');
    print(groupModel!.name);
    print(groupModel.date);
    print(groupModel.contactList);
    print(groupModel.expenseList);
  }
}
