import '../model/data_layer.dart';

class PlanController {
  final _plans = <Plan>[];
  List<Plan> get plans => List.unmodifiable(_plans);

  bool? get isEmpty => null;

  String _checkForDuplicates(Iterable<String> items, String text) {
    final duplicatedCount =
        items.where((element) => element.contains(text)).length;

    if (duplicatedCount > 0) {
      text += '${duplicatedCount + 1}';
    }
    return text;
  }

  void addNewplan({required String name}) {
    if (name.isEmpty) {
      return;
    }
    name = _checkForDuplicates(
      _plans.map(
        (plan) => plan.name,
      ),
      name,
    );
    final plan = Plan()..name = name;
    _plans.add(plan);
  }

  void deletePlan(Plan plan) {
    _plans.remove(plan);
  }

  void createNewTask({required Plan plan, String? description}) {
    if (description == null || description.isEmpty) {
      description = 'New Task';
    }
    description = _checkForDuplicates(
      plan.tasks.map((task) => task.description),
      description,
    );
    final task = Task()..description = description;
    plan.tasks.add(task);
  }
  void deleteTask({required Plan plan, required Task task}){
    plan.tasks.remove(task);
  }
}
