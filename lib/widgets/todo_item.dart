import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final VoidCallback onTap;

  const TodoItem({super.key, required this.todo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todo.title,
        style: TextStyle(
          decoration: todo.done ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Icon(
        todo.done ? Icons.check_box : Icons.check_box_outline_blank,
        color: todo.done ? Colors.green : null,
      ),
      onTap: onTap,
    );
  }
}
