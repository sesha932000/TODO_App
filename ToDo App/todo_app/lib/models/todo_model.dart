class todo_model {
  String? id;
  String? todoText;
  bool isDone;

  todo_model({required this.id, required this.todoText, this.isDone = false});

  static List<todo_model> todoList() {
    return [
      todo_model(id: '01', todoText: 'Morning Excercise', isDone: true),
      todo_model(id: '02', todoText: 'Buy Groceries', isDone: true),
      todo_model(
        id: '03',
        todoText: 'Check Emails',
      ),
      todo_model(
        id: '04',
        todoText: 'Team Meeting',
      ),
      todo_model(
        id: '05',
        todoText: 'Work on mobile apps for 2 hour',
      ),
      todo_model(
        id: '06',
        todoText: 'Dinner with Jenny',
      ),
    ];
  }
}
