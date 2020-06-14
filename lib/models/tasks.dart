class Tasks {
  String text;
  bool ischecked;
  Tasks({this.text, this.ischecked = false});

  void toggleCheck() {
    this.ischecked = !this.ischecked;
  }
}
