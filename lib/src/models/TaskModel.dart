class TaskModel {
  String task;
  bool checked;

  TaskModel(this.task, this.checked);

  setChecked() {
    checked = !checked;
  }
}
