class ToDo {
  final int id;
  final String title;

  ToDo(this.id, this.title);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{'title': title};

    if (id != null) {
      map['id'] = id;
    }

    return map;
  }
}
