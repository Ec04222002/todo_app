import 'package:flutter/cupertino.dart';
import 'package:todo_app/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(createdTime: DateTime.now(), title: 'Walk the Dog 🐕'),
    Todo(createdTime: DateTime.now(), title: 'Buy Food ', description: """
      -Eggs 
      -Milk 
      -Bread 
      -Water
      """),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
