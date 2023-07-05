import 'package:hive_flutter/adapters.dart';

part 'goal_model.g.dart';

@HiveType(typeId: 1)
class GoalModel {
  @HiveField(0) 
  final String what; 

  @HiveField(1)
  final String when; 

  @HiveField(2)
  final String how; 

  @HiveField(3)
  final String why; 

  GoalModel({required this.what, required this.when, required this.how, required this.why});


}

// class MyModelAdapter extends TypeAdapter<GoalModel> {
//   @override
//   final int typeId = 0;

//   @override
//   GoalModel read(BinaryReader reader) {
//     return GoalModel()
//       ..what = reader.readString()
//       ..when = reader.readString()
//       ..how = reader.readString()
//       ..why = reader.readString();
     
//   }

//   @override
//   void write(BinaryWriter writer, GoalModel obj) {
//     writer.writeString(obj.what);
//     writer.writeString(obj.when);
//     writer.writeString(obj.how);
//     writer.writeString(obj.why);
//   }
// }