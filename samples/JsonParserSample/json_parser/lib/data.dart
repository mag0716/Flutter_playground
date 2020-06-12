class Data {
  static final _keyId = 'id';
  static final _keyTitle = 'title';
  static final _keyEnabled = 'isEnabled';
  static final _keyValues = 'values';

  final int id;
  final String title;
  final bool isEnabled;
  final List<int> values;

  Data({this.id, this.title, this.isEnabled, this.values});

  Data.fromJson(Map<String, dynamic> json)
      : id = json[_keyId],
        title = json[_keyTitle],
        isEnabled = json[_keyEnabled],
        values = json[_keyValues].cast<int>() as List<int>;

  Map<String, dynamic> toJson() => {
        _keyId: id,
        _keyTitle: title,
        _keyEnabled: isEnabled,
        _keyValues: values
      };

  @override
  String toString() {
    return toJson().toString();
  }
}
