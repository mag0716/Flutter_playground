class ToDo {
  static String _keyId = 'id';
  static String _keyTitle = 'title';

  final int id;
  final String title;

  ToDo(this.id, this.title);

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(json[_keyId], json[_keyTitle]);
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{_keyTitle: title};

    if (id != null) {
      map[_keyId] = id;
    }

    return map;
  }
}
