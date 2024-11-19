import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];
  final _myBox = Hive.box('myBox');

  // run this method if this is the first time to ever open the app.
  void createInitialData() {
    todoList = [
      ['Make Tutorial', false],
      ['Make Tutorial', false],
    ];
  }

  // load data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
