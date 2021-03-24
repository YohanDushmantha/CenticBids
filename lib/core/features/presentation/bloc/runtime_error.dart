class RuntimeError{
  final String message;
  final bool isSessionExpired;
  final bool isCacheException;
  RuntimeError({this.message, this.isSessionExpired,this.isCacheException});
}