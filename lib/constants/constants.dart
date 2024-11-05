String pathLoaderFunctionForFlame(String value) {
  String modifiedValue = value.replaceAll(RegExp(r'/'), ' ');

  List<String> splitValues = modifiedValue.split(' ');

  return splitValues.last;
}
