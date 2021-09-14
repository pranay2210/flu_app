class KeyValueItemViewModel {
  String key, value;

  KeyValueItemViewModel(this.key, this.value);

  @override
  String toString() {
    return "{key: $key, value: $value}";
  }

  Map toJson() => {
        'key': key,
        'value': value,
      };

  factory KeyValueItemViewModel.fromJson(dynamic json) {
    return KeyValueItemViewModel(
        json['key'] as String, json['value'] as String);
  }
}
