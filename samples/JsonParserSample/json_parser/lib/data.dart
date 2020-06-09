class Data {
  static final _keyId = 'id';
  static final _keyTitle = 'title';

  final int id;
  final String title;

  Data({this.id, this.title});

  Data.fromJson(Map<String, dynamic> json)
      : id = json[_keyId],
        title = json[_keyTitle];

  Map<String, dynamic> toJson() => {_keyId: id, _keyTitle: title};

  @override
  String toString() {
    return toJson().toString();
  }
}
