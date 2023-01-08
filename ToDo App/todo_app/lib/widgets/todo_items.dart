import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/models/todo_model.dart';

class TodoItems extends StatelessWidget {
  final todo_model todo;
  final onToDoChanged;
  final OnDeleteItem;

  const TodoItems(
      {Key? key, required this.todo, this.onToDoChanged, this.OnDeleteItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            onToDoChanged(todo);
            print('Clicked on Todo Item. ');
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {
                OnDeleteItem(todo.id);
                print('Clicked on delete Icone');
              },
              icon: Icon(Icons.delete),
              iconSize: 18,
              color: Colors.white,
            ),
          ),
        ));
  }
}
