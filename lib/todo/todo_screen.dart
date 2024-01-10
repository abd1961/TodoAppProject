

import 'package:flutter/material.dart';

import 'database_helper.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // All journals
  List<Map<String, dynamic>> _todo = [];
  bool _isLoading = true;

  // This function is used to fetch all data from the database
  void _refreshTodoList() async {
    final data = await DBHelper.getItems();
    setState(() {
      _todo = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshTodoList(); // Loading the diary when the app starts
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // This function will be triggered when the floating button is pressed
  // It will also be triggered when you want to update an item
  void _showForm(int? id) async {
    if (id != null) {
      // id == null -> create new item
      // id != null -> update an existing item
      final existingTodo =
      _todo.firstWhere((element) => element['id'] == id);
      _titleController.text = existingTodo['title'];
      _descriptionController.text = existingTodo['description'];
    }

    showModalBottomSheet(context: context, elevation: 5, isScrollControlled: true,
        builder: (_) =>
            Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15,
                // this will prevent the soft keyboard from covering the text fields
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(hintText: 'Title'),
                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(hintText: 'Description'),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await _addItem();
                      }
                      if (id != null) {
                        await _updateItem(id);
                      }
                      _titleController.text = '';
                      _descriptionController.text = '';
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'Create New' : 'Update'),
                  )
                ],
              ),
            ));
  }

// Insert a new journal to the database
  Future<void> _addItem() async {
    await DBHelper.createItem(
        _titleController.text, _descriptionController.text);
  }

  // Update an existing journal
  Future<void> _updateItem(int id) async {
    await DBHelper.updateItem(
        id, _titleController.text, _descriptionController.text);
    _refreshTodoList();
  }

  // Delete an item
  void _deleteItem(int id) async {
    await DBHelper.deleteItem(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Successfully deleted a journal!'),
    ));
    _refreshTodoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQL'),
      ),
      body: _isLoading
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: _todo.length,
        itemBuilder: (context, index) =>
            Card(
              color: Colors.orange[200],
              margin: const EdgeInsets.all(15),
              child: ListTile(
                  title: Text(_todo[index]['title']),
                  subtitle: Text(_todo[index]['description']),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () => _showForm(_todo[index]['id']),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () =>
                              _deleteItem(_todo[index]['id']),
                        ),
                      ],
                    ),
                  )),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _showForm(null),
      ),
    );
  }

}