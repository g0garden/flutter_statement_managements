import 'package:fast_app_base/data/memory/vo_todo.dart';

sealed class TodoEvent {}

//add todo
class TodoAddEvent extends TodoEvent {}

//status update
class TodoStatusUpdateEvent extends TodoEvent {
  final Todo updatedTodo;

  TodoStatusUpdateEvent(this.updatedTodo);
}

//contents update
class TodoContentUpdateEvent extends TodoEvent {
  final Todo updatedTodo;

  TodoContentUpdateEvent(this.updatedTodo);
}

//remove todo
class TodoRemoveEvent extends TodoEvent {
  final Todo removedTodo;

  TodoRemoveEvent(this.removedTodo);
}
