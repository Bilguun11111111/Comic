import './task.dart';

class Plan {
  String name = '';
  final List<Task> tasks = [];
  int get completeCount => 
  tasks.where((element) => 
  element.complete).length;
  String get completnessMessage =>
  '$completeCount out of ${tasks.length} tasks';
}