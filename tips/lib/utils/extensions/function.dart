extension FunctionExtension on Function {
  String get asString => toString().split('\'')[1].trim();
}
