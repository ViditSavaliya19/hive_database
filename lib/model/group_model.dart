// import 'package:hive/hive.dart';
// part 'group_model.g.dart';
//
// @HiveType(typeId: 1)
// class GroupModel extends HiveObject
// {
//       @HiveField(0)
//       String? name;
//       @HiveField(1)
//       String? date;
//       @HiveField(2)
//       List<ContactModel>? contactList=[];
//       @HiveField(3)
//       List<Expense>? expenseList=[];
//
//       GroupModel({this.name, this.date, this.contactList, this.expenseList});
// }
//
// @HiveType(typeId: 2)
// class ContactModel extends HiveObject
// {
//
//     @HiveField(0)
//     String? name;
//     @HiveField(1)
//     String? model;
//
//     ContactModel({this.name, this.model});
// }
//
// @HiveType(typeId: 3)
// class Expense extends HiveObject
// {
//
//   @HiveField(0)
//   String? name;
//   @HiveField(1)
//   String? amount;
//   @HiveField(2)
//   String? category;
//   @HiveField(3)
//   String? notes;
//   @HiveField(4)
//   List<Split>? splitList =[];
//
//   Expense({this.name, this.amount, this.category, this.notes, this.splitList});
// }
//
// @HiveType(typeId: 4)
// class Split extends HiveObject
// {
//
//   @HiveField(0)
//   String? name;
//   @HiveField(1)
//   String? amount;
//
//   Split({this.name, this.amount});
// }

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
  // List<ContactModel>? contactList=[];
  HiveList<ContactModel>? contactList;
  @HiveField(3)
  // List<Expense>? expenseList=[];
  HiveList<Expense>? expenseList;

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

// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'group_model.dart';
//
// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************
//
// class GroupModelAdapter extends TypeAdapter<GroupModel> {
//   @override
//   final int typeId = 1;
//
//   @override
//   GroupModel read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return GroupModel(
//       name: fields[0] as String?,
//       date: fields[1] as String?,
//       contactList: (fields[2] as List?)?.cast<ContactModel>(),
//       expenseList: (fields[3] as List?)?.cast<Expense>(),
//     );
//   }
//
//   @override
//   void write(BinaryWriter writer, GroupModel obj) {
//     writer
//       ..writeByte(4)
//       ..writeByte(0)
//       ..write(obj.name)
//       ..writeByte(1)
//       ..write(obj.date)
//       ..writeByte(2)
//       ..write(obj.contactList)
//       ..writeByte(3)
//       ..write(obj.expenseList);
//   }
//
//   @override
//   int get hashCode => typeId.hashCode;
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is GroupModelAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
//
// class ContactModelAdapter extends TypeAdapter<ContactModel> {
//   @override
//   final int typeId = 2;
//
//   @override
//   ContactModel read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return ContactModel(
//       name: fields[0] as String?,
//       model: fields[1] as String?,
//     );
//   }
//
//   @override
//   void write(BinaryWriter writer, ContactModel obj) {
//     writer
//       ..writeByte(2)
//       ..writeByte(0)
//       ..write(obj.name)
//       ..writeByte(1)
//       ..write(obj.model);
//   }
//
//   @override
//   int get hashCode => typeId.hashCode;
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is ContactModelAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
//
// class ExpenseAdapter extends TypeAdapter<Expense> {
//   @override
//   final int typeId = 3;
//
//   @override
//   Expense read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return Expense(
//       name: fields[0] as String?,
//       amount: fields[1] as String?,
//       category: fields[2] as String?,
//       notes: fields[3] as String?,
//       splitList: (fields[4] as List?)?.cast<Split>(),
//     );
//   }
//
//   @override
//   void write(BinaryWriter writer, Expense obj) {
//     writer
//       ..writeByte(5)
//       ..writeByte(0)
//       ..write(obj.name)
//       ..writeByte(1)
//       ..write(obj.amount)
//       ..writeByte(2)
//       ..write(obj.category)
//       ..writeByte(3)
//       ..write(obj.notes)
//       ..writeByte(4)
//       ..write(obj.splitList);
//   }
//
//   @override
//   int get hashCode => typeId.hashCode;
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is ExpenseAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
//
// class SplitAdapter extends TypeAdapter<Split> {
//   @override
//   final int typeId = 4;
//
//   @override
//   Split read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return Split(
//       name: fields[0] as String?,
//       amount: fields[1] as String?,
//     );
//   }
//
//   @override
//   void write(BinaryWriter writer, Split obj) {
//     writer
//       ..writeByte(2)
//       ..writeByte(0)
//       ..write(obj.name)
//       ..writeByte(1)
//       ..write(obj.amount);
//   }
//
//   @override
//   int get hashCode => typeId.hashCode;
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is SplitAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
