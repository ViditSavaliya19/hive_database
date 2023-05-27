import 'package:hive/hive.dart';
part 'group_model.g.dart';

@HiveType(typeId: 1)
class GroupModel extends HiveObject
{
      @HiveField(0)
      String? name;
      @HiveField(1)
      String? date;
      @HiveField(2)
      List<ContactModel>? contactList=[];
      @HiveField(3)
      List<Expense>? expenseList=[];

      GroupModel({this.name, this.date, this.contactList, this.expenseList});
}

@HiveType(typeId: 2)
class ContactModel extends HiveObject
{

    @HiveField(0)
    String? name;
    @HiveField(1)
    String? model;

    ContactModel({this.name, this.model});
}

@HiveType(typeId: 3)
class Expense extends HiveObject
{

  @HiveField(0)
  String? name;
  @HiveField(1)
  String? amount;
  @HiveField(2)
  String? category;
  @HiveField(3)
  String? notes;
  @HiveField(4)
  List<Split>? splitList =[];

  Expense({this.name, this.amount, this.category, this.notes, this.splitList});
}

@HiveType(typeId: 4)
class Split extends HiveObject
{

  @HiveField(0)
  String? name;
  @HiveField(1)
  String? amount;

  Split({this.name, this.amount});
}