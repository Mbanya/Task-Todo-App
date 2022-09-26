import 'package:get/instance_manager.dart';
import 'package:task_todo_app/app/data/providers/task/provider.dart';
import 'package:task_todo_app/app/data/services/storage/repository.dart';
import 'package:task_todo_app/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
