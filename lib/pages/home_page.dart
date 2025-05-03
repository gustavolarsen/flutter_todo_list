import 'package:flutter/material.dart';
import '../models/todo.dart';
import '../widgets/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Todo> _todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    final texto = _controller.text.trim();
    if (texto.isEmpty) return;

    setState(() {
      _todos.add(Todo(title: texto));
      _controller.clear();
    });
  }

  void _toggleTodo(int index) {
    setState(() {
      _todos[index].done = !_todos[index].done;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minha Lista de Tarefas')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                return TodoItem(
                  todo: _todos[index],
                  onTap: () => _toggleTodo(index),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Digite uma nova tarefa',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.blue[50],
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ), // espaçamento entre o TextField e o botão
                IconButton(
                  onPressed: _addTodo,
                  icon: const Icon(Icons.add),
                  iconSize: 32,
                  color: Colors.blue,
                  splashColor: Colors.blue.shade200,
                  padding: const EdgeInsets.all(12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
