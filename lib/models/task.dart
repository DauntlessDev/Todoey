class Task {
  Task({this.title, this.isChecked});

  String title;
  bool isChecked;

  void toggleState(){
    isChecked = !isChecked;
  }
}
