import 'package:bloc/bloc.dart';
import 'package:fast_app_base/data/memory/bloc/todo_bloc_state.dart';
import 'package:fast_app_base/data/memory/bloc/todo_bloc_status.dart';
import 'package:fast_app_base/data/memory/bloc/todo_event.dart';
import 'package:fast_app_base/data/memory/todo_status.dart';
import 'package:fast_app_base/data/memory/vo_todo.dart';
import 'package:fast_app_base/screen/dialog/d_confirm.dart';
import 'package:fast_app_base/screen/main/write/d_write_todo.dart';
import 'package:flutter/material.dart';

class TodoBloc extends Bloc<TodoEvent, TodoBlocState> {
  //TodoCubit(super.initialState);
  TodoBloc() : super(const TodoBlocState(BlocStatus.initial, <Todo>[])) {
    //event listening
    on<TodoAddEvent>(_addTodo);
    on<TodoStatusUpdateEvent>(_changeTodoStatus);
    on<TodoContentUpdateEvent>(_editTodo);
    on<TodoRemoveEvent>(_removeTodo);
  }

  void emitNewList(List<Todo> copiedOldTodoList, Emitter<TodoBlocState> emit) =>
      emit(state.copyWith(todoList: copiedOldTodoList));

  void _addTodo(TodoAddEvent event, Emitter<TodoBlocState> emit) async {
    final result = await WriteTodoDialog().show();
    if (result != null) {
      //cubit안의 state에 접근하기
      final copiedOldTodoList = List.of(state.todoList); //수정가능하도록, List.of

      copiedOldTodoList.add(Todo(
        id: DateTime.now().millisecondsSinceEpoch,
        title: result.text,
        dueDate: result.dateTime,
        status: TodoStatus.ongoing,
        createdTime: DateTime.now(),
      ));

      emitNewList(copiedOldTodoList, emit);
    }
  }

  void _changeTodoStatus(
      TodoStatusUpdateEvent event, Emitter<TodoBlocState> emit) async {
    final copiedOldTodoList = List.of(state.todoList); //수정가능하도록, List.of

    final todo = event.updatedTodo;
    //todo Id를 찾아서
    final todoIndex =
        copiedOldTodoList.indexWhere((element) => element.id == todo.id);

    TodoStatus status = todo.status;
    switch (status) {
      case TodoStatus.incomplete:
        final result = await ConfirmDialog('다시 처음 상태로 변경하시겠어요?').show();
        result?.runIfSuccess((data) {
          status = TodoStatus.incomplete;
        });
      case TodoStatus.ongoing:
        status = TodoStatus.ongoing;
      case TodoStatus.complete:
        status = TodoStatus.complete;
    }
    //해당 index에 todo 전달
    copiedOldTodoList[todoIndex] = todo.copyWith(status: status);
    //수정된 새 todoList전달
    emitNewList(copiedOldTodoList, emit);
  }

  _editTodo(TodoContentUpdateEvent event, Emitter<TodoBlocState> emit) async {
    final todo = event.updatedTodo;
    final result = await WriteTodoDialog(todoForEdit: todo).show();
    if (result != null) {
      // todo.modifyTime = DateTime.now();
      // todo.title = data.title;
      // todo.dueDate = data.dueDate;

      final oldCopiedList = List<Todo>.from(state.todoList);
      oldCopiedList[oldCopiedList.indexOf(todo)] = todo.copyWith(
          title: result.text,
          dueDate: result.dateTime,
          modifyTime: DateTime.now());
      emitNewList(oldCopiedList, emit);
    }
  }

  void _removeTodo(TodoRemoveEvent event, Emitter<TodoBlocState> emit) {
    final todo = event.removedTodo;
    final oldCopiedList = List<Todo>.from(state.todoList);
    oldCopiedList.removeWhere((element) => element.id == todo.id);
    emitNewList(oldCopiedList, emit);
  }
}
