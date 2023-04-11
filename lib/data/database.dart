import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  final mybox = Hive.box('mybox');

  List todoList = [];

  void createInitialData() {
    todoList = [
      ['Rate this App', false],
      ['Comment your views', false],
    ];
  }

  void updateData() {
    mybox.put('TODOLIST', todoList);
  }

  void loadData() {
    todoList = mybox.get('TODOLIST');
  }
}
